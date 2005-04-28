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
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

/* timeout in seconds */
const int TIME_OUT=480;

static pid_t pID;

void onTimeOut(){
	printf("EXIT CODE: timeout (%d sec)\n", TIME_OUT);
	fflush(stdout);
	fflush(stderr);
	kill(-pID, SIGKILL);

	exit(EXIT_SUCCESS); 
}

int main(int argc, char** arg){
	pID = fork();
	if (pID == 0){
		// new process session leader
		pID=setsid();

		/* child: construct cmd */
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
		printf("EXIT CODE: %i\n", system(cmd));
	}else if (pID < 0){
        	fprintf(stderr, "failed to fork\n");
		return EXIT_FAILURE;
	}else{
		/* parent : timeout */
		struct sigaction acti;
		acti.sa_handler = &onTimeOut;
		if(0!=sigaction(SIGALRM, &acti, NULL)){
			fprintf(stderr, "failed to set timeout\n");
			onTimeOut();
			return EXIT_FAILURE;
		}	
		alarm(TIME_OUT);
		wait(NULL);
	}

	return EXIT_SUCCESS;
}
#else

#error "no implementation for your OS present"

#endif /* USE_POSIX else */
