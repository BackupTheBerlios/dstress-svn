/*
 * crashRun - execute command with restricted CPU time and memory usage
 *
 * Copyright (C)
 *		2005 Thomas Kuehne <thomas@kuehne.cn>
 *		2005 Anders F Björrklund <afb@algonet.se>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * $HeadURL$
 * $Date$
 * $Author$
 *
 */

#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <signal.h>

const int TIME_OUT= 30; /* time-out in seconds (might be cpu or system time)*/
const int MEM_LIMIT = 1024;  /* mem megabytes */

/* identify system API */
#if defined(__GNU_LIBRARY__) || defined(__GLIBC__) || defined(__USE_POSIX)
#define USE_POSIX
#endif

#if defined(linux) || defined(__FreeBsd__) || defined(__OpenBSD__)
#define USE_POSIX
#endif

#if defined(__APPLE__) && defined(__MACH__)
#define USE_POSIX
#endif

#if !defined(USE_POSIX) && \
	(defined(WINDOWS) || defined(WIN) || defined(WINVER) || defined(WIN32))
#define USE_WINDOWS
#endif


/* is the environment sane? */
#if defined(USE_POSIX) && defined(USE_WINDOWS)
#error USE_WINDOWS and USE_POSIX are defined
#endif

#if !defined(USE_POSIX) && !defined(USE_WINDOWS)
#error neither USE_POSIX nor USE_WINDOWS are defined
#endif


/* API inludes and config */
#ifdef USE_POSIX
#define USE_POSIX_LIMITS
#include <sys/types.h>
#include <unistd.h>
#include <sys/wait.h>
static pid_t pID;
#endif

#ifdef USE_POSIX_LIMITS
#ifndef USE_POSIX
#error USE_POSIX_LIMITS requires USE_POSIX
#endif
#include <sys/resource.h>
#include <sys/types.h>
#endif


char* cmd;

/* let's start implementing :) */

void handleSignal(int signalID){
#ifdef SIGALARM
	if( signalID==SIGALRM
#ifdef SIGXCPU
		|| signalID==SIGXCPU
#endif
	)
		printf("EXIT CODE: signal %d (time-out after %d seconds)", signalID, TIME_OUT);
	else
#endif
	printf("EXIT CODE: signal %d, errno %d\n", signalID, errno);

	fflush(stdout);
	fflush(stderr);

#ifdef USE_POSIX
	kill(-pID, SIGTERM);
	sleep(1);
	kill(-pID, SIGKILL);
#else
#error sub processes have to be killed
#endif

#ifdef SIGUSR1
	if(signalID==SIGUSR1 || signalID==SIGUSR2)
		exit(EXIT_SUCCESS);
	else
#endif
	exit(EXIT_FAILURE);
}

void setupLimits(){
#ifdef USE_POSIX_LIMITS
	struct rlimit limit;

	limit.rlim_cur = TIME_OUT;
	limit.rlim_max = TIME_OUT;
	if(0!=setrlimit(RLIMIT_CPU, &limit)){
		fprintf(stderr, "failed to set cpu limit [%d]\n", errno);
		exit(EXIT_FAILURE);
	}

	limit.rlim_cur = MEM_LIMIT * 1024L * 1024L;
	limit.rlim_max = MEM_LIMIT * 1024L * 1024L;
#ifdef RLIMIT_AS
	if(0!=setrlimit(RLIMIT_AS, &limit)){
		fprintf(stderr, "failed to set mem limit (AS) [%d]\n", errno);
		exit(EXIT_FAILURE);
	}
#endif

	if(0!=setrlimit(RLIMIT_DATA, &limit)){
		fprintf(stderr, "failed to set mem limit (DATA) [%d]\n", errno);
		exit(EXIT_FAILURE);
	}

	if(0!=setrlimit(RLIMIT_RSS, &limit)){
		fprintf(stderr, "failed to set mem limit (RSS) [%d]\n", errno);
		exit(EXIT_FAILURE);
	}
#if defined(RLIMIT_MEMLOCK) && !defined(linux)
	if(0!=setrlimit(RLIMIT_MEMLOCK, &limit)){
		fprintf(stderr, "failed to set mem limit (MEMLOCK) [%d]\n", errno);
		exit(EXIT_FAILURE);
	}
#endif
#endif /* USE_POSIX_LIMITS */
}

void setupHandlers(){
#ifdef USE_POSIX
#ifdef SIGHUP
	signal(SIGHUP, &handleSignal);
#endif
	signal(SIGINT, &handleSignal);
#ifdef SIGQUIT
	signal(SIGQUIT, &handleSignal);
#endif
	signal(SIGILL, &handleSignal);
#ifdef SIGTRAP
	signal(SIGTRAP, &handleSignal);
#endif
	signal(SIGABRT, &handleSignal);
#ifdef SIGIOT
	signal(SIGIOT, &handleSignal);
#endif
#ifdef SIGBUS
	signal(SIGBUS, &handleSignal);
#endif
	signal(SIGFPE, &handleSignal);
#ifdef SIGUSR1
	signal(SIGUSR1, &handleSignal);
#endif
	signal(SIGSEGV, &handleSignal);
#ifdef SIGUSR2
	signal(SIGUSR2, &handleSignal);
#endif
#ifdef SIGPIPE
	signal(SIGPIPE, &handleSignal);
#endif
#ifdef SIGALRM
	signal(SIGALRM, &handleSignal);
#endif
	signal(SIGTERM, &handleSignal);
#ifdef SIGSTKFLT
	signal(SIGSTKFLT, &handleSignal);
#endif
#ifdef SIGTSTP
	signal(SIGTSTP, &handleSignal);
#endif
#ifdef SIGXCPU
	signal(SIGXCPU, &handleSignal);
#endif
#ifdef SIGXFSZ
	signal(SIGXFSZ, &handleSignal);
#endif
#ifdef SIGVTALRM
	signal(SIGVTALRM, &handleSignal);
#endif
#ifdef SIGSYS
	signal(SIGSYS, &handleSignal);
#endif
#endif /* USE_POSIX */
}

void cleanCommand(){
	free(cmd);
}

char* reconstructCmd(int argc, char** argv){
	size_t cmdLen=1;
	size_t tmpLen;
	size_t i;
	char* tmp;

	for(i=0; i<argc; i++){
		cmdLen+=strlen(argv[i]);
		cmdLen+=3;
	}

	cmd = (char*)malloc(cmdLen);
	atexit(&cleanCommand);

	*cmd = '\x00';
	tmp = cmd;

	for(i=0; i<argc; i++){
		tmpLen = snprintf(tmp, cmdLen, "\"%s\" ", argv[i]);
		tmp += tmpLen;
		cmdLen -= tmpLen;
	}
	return cmd;
}

int main(int argc, char** argv){
	if(argc<2){
		fprintf(stderr, "name of command to call required\n");
		return EXIT_FAILURE;
	}
	cmd = reconstructCmd(argc-1, argv+1);

#ifdef USE_POSIX
	setupLimits();
	pID = fork();
	if(pID == 0){
		/* child */
		pID=setsid();
#ifdef DEBUG
		printf("cmd[%i sec]: %s \n", TIME_OUT, cmd);
#endif
		printf("EXIT CODE: %d\n", system(cmd));
	}else if(pID < 0){
		fprintf(stderr, "failed to fork\n");
		return EXIT_FAILURE;
	}else{
		/* parent */
		setupHandlers();
#if !(defined(USE_POSIX_LIMITS) && defined(SIGXCPU))
		alarm(TIME_OUT);
#endif
		wait(NULL);
	}
	return EXIT_SUCCESS;
#else /* USE_POSIX */

#error no test run implmentation present for your system

#endif /* USE_POSIX else */
}
