/*
 * crashRun - execute command with timeout limit and catch segfaults 
 *
 * Copyright (C) 2005 Thomas Kuehne <thomas@kuehne.cn>
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

/* time-out in seconds */
#define TIME_OUT 480

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

#include <unistd.h>
#include <sys/wait.h>

static pid_t pID;

void resourceLimit(int signalID){
#ifdef SIGXCPU
	if(signalID==SIGALRM || signalID==SIGXCPU){
#else
	if(signalID==SIGALRM){
#endif
		printf("EXIT CODE: signal %d (time-out after %d seconds)", signalID, TIME_OUT);
	}else{
		printf("EXIT CODE: signal %d\n", signalID);
	}

	fflush(stdout);
	fflush(stderr);
	kill(-pID, SIGKILL);

	if(signalID==SIGUSR1 || signalID==SIGUSR2){
		exit(EXIT_FAILURE);
	}else{
		exit(EXIT_SUCCESS);
	}
}

int main(int argc, char** arg){
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
		printf("cmd[%i s]: %s\n", TIME_OUT, cmd);
#endif
		fflush(stdout);
		fflush(stderr);
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
			fprintf(stderr, "failed to set timeout (%d)\n", errno);
			resourceLimit(SIGUSR1);
			return EXIT_FAILURE; /* never executed */
		}	
		alarm(TIME_OUT);
		wait(NULL);
	}

	return EXIT_SUCCESS;
}
#else /* USE_POSIX */

#error "no implementation present for your OS"

#endif /* USE_POSIX else */
