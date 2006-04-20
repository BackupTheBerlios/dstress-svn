/*
 * crashRun - execute command with restricted CPU time and memory usage
 *
 * Copyright (C)
 *		2005, 2006 Thomas Kuehne <thomas@kuehne.cn>
 *		2005 Anders F Björrklund <afb@algonet.se> (BSD)
 *		2005 Stewart Gordon <smjg_1998@yahoo.com> (Windows)
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

#undef WAIT_GUARD
#define WAIT_GUARD 3

/* time-out in seconds
 * Posix: cpu time(timeOut) and system time(timeOut * WAIT_GUARD)
 * Windows: system time(timeOut)
 */
long int timeOut;

/* max memory usage in megabytes (Posix only) */
long int memoryLimit;

/* identify system API */
#if defined(_POSIX_SOURCE) || defined(_POSIX_C_SOURCE) || defined(_BSD_SOURCE) || defined(_SVID_SOURCE)
#define USE_POSIX 1
#endif

#if defined(__GNU_LIBRARY__) || defined(__GLIBC__)
#define USE_POSIX 1
#endif

#if defined(linux) || defined(__FreeBsd__) || defined(__OpenBSD__)
#define USE_POSIX 1
#endif

#if defined(__APPLE__) && defined(__MACH__)
#define USE_POSIX 1
#endif

#if !defined(USE_POSIX) && \
	(defined(WINDOWS) || defined(WIN) || defined(WINVER) || defined(WIN32) \
	|| defined(WIN64))
#define USE_WINDOWS 1
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

#ifdef USE_WINDOWS
#include <windows.h>
#define snprintf _snprintf
#endif



#ifdef USE_POSIX

void handleSignal(int signalID){
	if( signalID==SIGALRM
#ifdef SIGXCPU
		|| signalID==SIGXCPU
#endif
	)
		printf("EXIT CODE: signal %d (time-out after CPU/total %li/%li seconds)\n",
				signalID, timeOut, timeOut * WAIT_GUARD);
	else
		printf("EXIT CODE: signal %d, errno %d\n", signalID, errno);

	fflush(stdout);
	fflush(stderr);

	kill(-pID, SIGTERM);
	sleep(1);
	kill(-pID, SIGKILL);

	exit(EXIT_FAILURE);
}

void setupLimits(){
	struct rlimit limit;

	limit.rlim_cur = timeOut;
	limit.rlim_max = timeOut;
	if(0!=setrlimit(RLIMIT_CPU, &limit)){
		fprintf(stderr, "failed to set cpu limit [%d]\n", errno);
		exit(EXIT_FAILURE);
	}

	limit.rlim_cur = memoryLimit * 1024L * 1024L;
	limit.rlim_max = memoryLimit * 1024L * 1024L;
#ifdef RLIMIT_AS
	if(0!=setrlimit(RLIMIT_AS, &limit)){
		fprintf(stderr, "failed to set mem limit (AS) %s [%d]\n", strerror(errno), errno);
		exit(EXIT_FAILURE);
	}
#endif

	if(0!=setrlimit(RLIMIT_DATA, &limit)){
		fprintf(stderr, "failed to set mem limit (DATA) %s [%d]\n", strerror(errno), errno);
		exit(EXIT_FAILURE);
	}

	if(0!=setrlimit(RLIMIT_RSS, &limit)){
		fprintf(stderr, "failed to set mem limit (RSS) %s [%d]\n", strerror(errno), errno);
		exit(EXIT_FAILURE);
	}
#if defined(RLIMIT_MEMLOCK) && !defined(linux)
	if(0!=setrlimit(RLIMIT_MEMLOCK, &limit)){
		fprintf(stderr, "failed to set mem limit (MEMLOCK): %s [%d]\n", strerror(errno), errno);
		exit(EXIT_FAILURE);
	}
#endif
}

void setupHandlers(){
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
	signal(SIGALRM, &handleSignal);
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
}
#endif /* USE_POSIX */

char* reconstructCmd(int argc, char** argv){
	size_t cmdLen=1;
	size_t tmpLen;
	size_t i;
	char* tmp;
	char* cmd;

	for(i=0; i<argc; i++){
		cmdLen+=strlen(argv[i]);
		cmdLen+=1;
	}

	cmd = malloc(++cmdLen);
	if(!cmd){
		fprintf(stderr, "failed to allocate enough memory");
		exit(EXIT_FAILURE);
	}

	*cmd = '\x00';
	tmp = cmd;

	for(i=0; i<argc; i++){
		tmpLen = snprintf(tmp, cmdLen, "%s ", argv[i]);
		tmp += tmpLen;
		cmdLen -= tmpLen;
	}
	return cmd;
}

int main(int argc, char** argv){
	char* cmd;
	char* end;

	if(argc<4){
		fprintf(stderr, "crashRun <timeOut (s)> <maxMemory (MB)> <command> [<command arg> ...]\n");
		return EXIT_FAILURE;
	}
	timeOut = strtol(argv[1], &end, 10);
	if(*end){
		fprintf(stderr, "the timeOut argument contains the illegal character: %c (0x%X)", *end, *end);
		return EXIT_FAILURE;
	}else if(timeOut < 1){
		fprintf(stderr, "minimum timeOut is 1 second, got %li seconds\n", timeOut);
		return EXIT_FAILURE;
	}

	memoryLimit = strtol(argv[2], &end, 10);
	if(*end){
		fprintf(stderr, "the maxMemory argument contains the illegal character: %c (0x%X)", *end, *end);
		return EXIT_FAILURE;
	}else if(memoryLimit < 1){
		fprintf(stderr, "minimum memoryLimit is 1MB second, got %li MB\n", memoryLimit);
		return EXIT_FAILURE;
	}
	cmd = reconstructCmd(argc-3, argv+3);

#ifdef DEBUG
		printf("cmd[%li sec, %li MB]: %s \n", timeOut, memoryLimit, cmd);
#endif

#ifdef USE_POSIX
	setupLimits();
	pID = fork();
	if(pID == 0){
		/* child */
		pID=setsid();
		printf("EXIT CODE: %d\n", system(cmd));
	}else if(pID < 0){
		fprintf(stderr, "failed to fork\n");
		return EXIT_FAILURE;
	}else{
		/* parent */
		setupHandlers();
#if !(defined(USE_POSIX_LIMITS) && defined(SIGXCPU))
		alarm(timeOut);
#else
		/* safe guard against childs without CPU usage */
		alarm(timeOut * WAIT_GUARD);
#endif
		wait(NULL);
	}
	return EXIT_SUCCESS;
#elif USE_WINDOWS
	/* BUG: maxMemory not implemented */

	PROCESS_INFORMATION processInfo;
	STARTUPINFO startupInfo;
	SECURITY_ATTRIBUTES sa = {
		sizeof(SECURITY_ATTRIBUTES), NULL, TRUE
	};
	unsigned long exitCode;
	long int timeLeft = timeOut;	/* time limit in iterations of WFX loop */

	memset(&processInfo, 0, sizeof(PROCESS_INFORMATION));
	memset(&startupInfo, 0, sizeof(STARTUPINFO));
	startupInfo.cb = sizeof(STARTUPINFO);

	if (!CreateProcess(NULL, cmd, NULL, NULL, TRUE, 0, NULL, NULL,
		  &startupInfo, &processInfo)) {
		void *message;

		FormatMessageA(FORMAT_MESSAGE_ALLOCATE_BUFFER
		  | FORMAT_MESSAGE_FROM_SYSTEM, NULL, GetLastError(), 0,
		   (char*) &message, 0, NULL);

		/* this should never happen */
		fprintf(stderr, "ERROR running %s:\n", cmd);
		fprintf(stderr, "%s\n", message);
		LocalFree((HLOCAL) message);
		return RAND_MAX;
	}

	/* wait for exit */
	while (TRUE) {
		Sleep(1000);
		GetExitCodeProcess(processInfo.hProcess, &exitCode);
		if (exitCode == 0x103) {
			if (--timeLeft == 0) {
				TerminateProcess(processInfo.hProcess, EXIT_FAILURE);
				printf("EXIT CODE: timeout after %li seconds\n", timeOut);
				Sleep(100);
				return EXIT_SUCCESS;
			}
		} else {
			printf("EXIT CODE: %i\n", exitCode);
			return EXIT_SUCCESS;
		}
	}

	fprintf(stderr, "crashRun: BUG\n");
	return EXIT_FAILURE;
#else

#error no implmentation for your system found (supported: Posix, Windows)

#endif /* USE_POSIX else */
}
