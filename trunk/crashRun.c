/*
 * crashRun - execute command with restricted CPU time and memory usage 
 *
 * Copyright (C)
 * 		2005 Thomas Kuehne <thomas@kuehne.cn>
 *		2005 Anders F Björklund <afb@algonet.se>
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

/* time-out in minutes (cpu or system time)*/
const int TIME_OUT=5;

#if defined(__GNU_LIBRARY__) || defined(__GLIBC__)
#define USE_POSIX
#endif

#ifdef linux
#define USE_POSIX
#endif

#if defined(__APPLE__) && defined(__MACH__)
#define USE_POSIX
#endif

#ifdef __FreeBSD__
#define USE_POSIX
#endif


#ifdef USE_POSIX
#define USE_LIMIT

#include <unistd.h>
#include <sys/wait.h>

#ifdef USE_LIMIT
#include <sys/types.h>
#include <sys/time.h>
#include <sys/resource.h>

const int PROC_LIMIT = 256; /* no processes */ 
const int MEM_LIMIT = 200;  /* mem megabytes */
#endif

static pid_t pID;

void resourceLimit(int signalID){
#ifdef SIGXCPU
	if(signalID==SIGALRM || signalID==SIGXCPU){
#else
	if(signalID==SIGALRM){
#endif
		printf("EXIT CODE: signal %d (time-out after %d minutes)", signalID, TIME_OUT);
	}else{
		printf("EXIT CODE: signal %d\n", signalID);
	}

	fflush(stdout);
	fflush(stderr);
	kill(-pID, SIGTERM);
	sleep(1);
	kill(-pID, SIGKILL);

	if(signalID==SIGUSR1 || signalID==SIGUSR2){
		exit(EXIT_FAILURE);
	}else{
		exit(EXIT_SUCCESS);
	}
}

int main(int argc, char** arg){
#ifdef USE_LIMIT
	{
		struct rlimit	limit;
	
		limit.rlim_cur = TIME_OUT * 60;
		limit.rlim_max = TIME_OUT * 60;
		if(0!=setrlimit(RLIMIT_CPU, &limit)){
			fprintf(stderr, "failed to set cpu limit [%d]\n", errno);
			return EXIT_FAILURE;
		}
	
		limit.rlim_cur = PROC_LIMIT;
		limit.rlim_max = PROC_LIMIT;
		if(0!=setrlimit(RLIMIT_NPROC, &limit)){
			fprintf(stderr, "failed to set proc limit [%d]\n", errno);
			return EXIT_FAILURE;
		}
	
		limit.rlim_cur = MEM_LIMIT * 1024L * 1024L;
		limit.rlim_max = MEM_LIMIT * 1024L * 1024L;
#ifdef RLIMIT_AS
		if(0!=setrlimit(RLIMIT_AS, &limit)){
			fprintf(stderr, "failed to set mem limit (AS) [%d]\n", errno);
			return EXIT_FAILURE;
		}
#endif /* RLIMIT_AS */
		
		if(0!=setrlimit(RLIMIT_DATA, &limit)){
			fprintf(stderr, "failed to set mem limit (DATA) [%d]\n", errno);
			return EXIT_FAILURE;
		}

		if(0!=setrlimit(RLIMIT_RSS, &limit)){
			fprintf(stderr, "failed to set mem limit (RSS) [%d]\n", errno);
			return EXIT_FAILURE;
		}
#if defined(RLIMIT_MEMLOCK) && !defined(linux) 
		if(0!=setrlimit(RLIMIT_MEMLOCK, &limit)){
			fprintf(stderr, "failed to set mem limit (MEMLOCK) [%d]\n", errno);
			return EXIT_FAILURE;
		}
#endif /* RLIMIT_MEMLOCK */
	}
#endif /* USE_LIMIT */
	pID = fork();
	if (pID == 0){
		/* child: resource management */
		pID=setsid();

		/* child: execute args */
		int cmdLen=1;
		int i;
		for(i=1; i<argc; i++){
			cmdLen+=strlen(arg[i]);
			cmdLen+=3;
		}

		char* cmd = malloc(cmdLen);
		*cmd='\x00';
	
		for(i=1; i<argc; i++){
			strcat(cmd, "\"");
			strcat(cmd, arg[i]);
			strcat(cmd, "\" ");
		}
#ifdef DEBUG
		printf("cmd[%i min]: %s\n", TIME_OUT, cmd);
#endif
		printf("EXIT CODE: %d\n", system(cmd));
	}else if (pID < 0){
        	fprintf(stderr, "failed to fork\n");
		return EXIT_FAILURE;
	}else{
		/* parent : clean kill */
		struct sigaction acti;
		acti.sa_handler = &resourceLimit;
		sigaction(SIGHUP, &acti, NULL);
		sigaction(SIGINT, &acti, NULL);
		sigaction(SIGQUIT, &acti, NULL);
		sigaction(SIGABRT, &acti, NULL);	
		sigaction(SIGTERM, &acti, NULL);

		/* parent : timeout */
		if(0!=sigaction(SIGALRM, &acti, NULL)){
			fprintf(stderr, "failed to set timeout [%d]\n", errno);
			resourceLimit(SIGUSR1);
			return EXIT_FAILURE; /* never executed */
		}
#ifndef USE_LIMITS	
		alarm(TIME_OUT * 60);
#endif
		wait(NULL);
	}

	return EXIT_SUCCESS;
}
#else /* USE_POSIX */

#error "no implementation present for your OS"

#endif /* USE_POSIX else */
