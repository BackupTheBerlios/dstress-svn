/* 
 * core test tool for the DStress test suite 
 * http://dstress.kuehne.cn
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

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>

#define TAG 		"__DSTRESS_DFLAGS__"
#define OBJ		"-odobj "
#define TLOG		"log.tmp"

#define RUN		1
#define NORUN		2
#define COMPILE		4
#define NOCOMPILE	8

/* Query the environment for the compiler name */
char* getCompiler(){
	char* back = getenv("DMD");
	if(back == NULL){
		back = getenv("dmd");
		if(back==NULL){
			back = "dmd";
		}
	}
	return back;
}

/* Query the environment for general flags */
char* getGeneralFlags(){
	char* back = getenv("DFLAGS");
	if(back == NULL){
		back = getenv("dflags");
		if(back==NULL){
			back = "";
		}
	}
	return back;
}

#ifdef __GNU_LIBRARY__
#define USE_POSIX_LOAD
#endif

#ifdef __GLIBC__
#define USE_POSIX_LOAD
#endif

#ifdef linux
#define USE_POSIX_LOAD
#endif

#ifdef USE_POSIX_LOAD

#define RETURN_OK 0
#define RETURN_FAIL 256

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
char* loadFile(char* filename){
	char* back = NULL;
	struct stat fileInfo;
	int file = open(filename, O_RDONLY);
	if(errno == 0 && file != 0 && file != -1){
		if(0==fstat(file, &fileInfo)){
			back=malloc(fileInfo.st_size+1);
			fileInfo.st_size = read(file, back, fileInfo.st_size);
			if(fileInfo.st_size>0){
				*(back+fileInfo.st_size+1) = '\x00';
			}else{
				back = "\x00";
			}
		}
		close(file);
	}
	errno = 0;
	return back;
}
#else

#ifdef WIN32

#define RETURN_OK 0
#define RETURN_FAIL 1

#include <windows.h>
char* loadFile(char* filename){
	char* back=NULL;
	DWORD size, numread;
	HANDLE file=CreateFile(filename, GENERIC_READ, FILE_SHARE_READ, NULL,
		OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN, NULL);
	if (file != INVALID_HANDLE_VALUE){
		size = GetFileSize(file, NULL);
		if (size != INVALID_FILE_SIZE){
			back=malloc((size+1)*sizeof(char));
			if (ReadFile(file,back,size,&numread,NULL) == 0){
				if (numread==size)
					*(back+size+1) = '\x00';
				else
					back = "\x00";
			}else
				back = "\x00";
		}
		CloseHandle(file);
	}
	errno = 0;
	return back;
}
#else
#error no loadFile adaptation for this system available
#endif

#endif

int main(int argc, char* arg[]){

	char* compiler;
	char* general;
	char* spezial;
	char* cmd;
	int modus;
	int res;
	
	/* check arguments */
	if(argc != 3){
err:		if(argc!=0)		
			fprintf(stderr,"%s <run|norun|compile|nocompile> <source>\n", arg[0]);
		else
			fprintf(stderr,"dstress.exe <run|norun|compile|nocompile> <source>\n");
		exit(-1);
	}
	
	if(0==strcmp(arg[1], "run") || 0==strcmp(arg[1], "RUN")){
		modus = RUN;
	}else if(0==strcmp(arg[1], "norun") || 0==strcmp(arg[1], "NORUN")){
		modus = NORUN;
	}else if(0==strcmp(arg[1], "compile") || 0==strcmp(arg[1], "COMPILE")){
		modus = COMPILE;
	}else if(0==strcmp(arg[1], "nocompile") || 0==strcmp(arg[1], "NOCOMPILE")){
		modus = NOCOMPILE;
	}else{
		goto err;
	}

	/* gen flags */
	compiler = getCompiler();
	general = getGeneralFlags();
	cmd = loadFile(arg[2]);
	if(cmd==NULL){
		spezial="";
	}else{
		cmd = strstr(cmd, TAG);
		if(cmd==NULL){
			spezial="";
		}else{
			spezial = cmd + strlen(TAG);
			cmd = strstr(spezial, "\n");
			if(cmd!=NULL){
				*cmd='\x00';
			}
			cmd = strstr(spezial, "\r");
			if(cmd!=NULL){
				*cmd='\x00';
			}
		}
	}

	if(modus==COMPILE || modus==NOCOMPILE){
		/* gen command */
		cmd = malloc(strlen(compiler)+strlen(general)+strlen(spezial)+strlen(OBJ)
			+strlen(arg[2])+strlen(TLOG)+64);
		cmd[0]='\x00';
		strcat(cmd, compiler);
		strcat(cmd, " ");
		strcat(cmd, general);
		strcat(cmd, " ");
		strcat(cmd, spezial);
		strcat(cmd, " -c ");
		if(NULL==strstr(cmd, "-od")){
			strcat(cmd, OBJ);
			strcat(cmd, " ");
		}
		strcat(cmd, arg[2]);
		strcat(cmd, " 1> ");
		strcat(cmd, TLOG);
		strcat(cmd, " 2>&1");

		/* test */
		if(modus==COMPILE){
			fprintf(stderr, "compile: %s\n", cmd);
		}else{
			fprintf(stderr, "nocompile: %s\n", cmd);
		}
		res = system(cmd);

		/* diagnostic output */
		cmd = loadFile(TLOG);
		fprintf(stderr, "%s\n", cmd);
		if(strstr(cmd, "Internal error")!= NULL || strstr(cmd, "gcc.gnu.org/bugs")!=NULL){
			printf("ERROR:\t%s (Internal compiler error)\n", arg[2]);
		}else if(modus==COMPILE){
			if(res==RETURN_OK){
				printf("PASS: \t%s\n", arg[2]);
			}else if(res==RETURN_FAIL){
				printf("FAIL: \t%s [%d]\n", arg[2], res);
			}else{
				printf("ERROR:\t%s [%d]\n", arg[2], res);
			}
		}else{
			if(res==RETURN_FAIL){
				printf("XFAIL:\t%s\n", arg[2]);
			}else if(res==RETURN_OK){
				printf("XPASS:\t%s\n", arg[2]);
			}else{
				printf("ERROR:\t%s [%d]\n", arg[2], res);
			}
		}
		fprintf(stderr,"--------\n");
	}else if(modus==RUN || modus==NORUN){
		/* gen command */
		cmd = malloc(strlen(compiler)+strlen(general)+strlen(spezial)+strlen(OBJ)
			+strlen(arg[2])*2+strlen(TLOG)+64);
		cmd[0]='\x00';
		strcat(cmd, compiler);
		strcat(cmd, " ");
		strcat(cmd, general);
		strcat(cmd, " ");
		strcat(cmd, spezial);
		strcat(cmd, " ");
		if(NULL==strstr(cmd, "-od")){
			strcat(cmd, OBJ);
			strcat(cmd, " ");
		}
		if(NULL==strstr(cmd, "-of")){
			strcat(cmd, "-of");
			strcat(cmd, arg[2]);
			strcat(cmd, ".exe ");
		}
		strcat(cmd, arg[2]);
		strcat(cmd, " 1> ");
		strcat(cmd, TLOG);
		strcat(cmd, " 2>&1");

		/* test 1/2 */
		if(modus==RUN){
			fprintf(stderr, "run: %s\n", cmd);
		}else{
			fprintf(stderr, "norun: %s\n", cmd);
		}
		res = system(cmd);
		
		/* diagnostic 1/2 */
		cmd = loadFile(TLOG);
		fprintf(stderr, "%s", cmd);
		if(strstr(cmd, "Internal error")!= NULL || strstr(cmd, "gcc.gnu.org/bugs")!=NULL){
			printf("ERROR:\t%s (Internal compiler error)\n", arg[2]);
			fprintf(stderr, "\n--------\n");
			return 0;
		}else if(res==RETURN_FAIL){
			printf("FAIL: \t%s [%d]\n", arg[2], res);
			fprintf(stderr, "\n--------\n");
			return 0;
		}else if(res!=RETURN_OK){
			printf("ERROR:\t%s [%d]\n", arg[2], res);
			fprintf(stderr, "\n--------\n");
			return 0;
		}
		
		/* test 2/2 */
		*cmd = '\x00';
		strcat(cmd, arg[2]);
		strcat(cmd, ".exe 1> ");
		strcat(cmd, TLOG);
		strcat(cmd, " 2>&1");
		fprintf(stderr, "%s\n", cmd);
		res=system(cmd);
		
		/* diagnostic 2/2 */
		cmd = loadFile(TLOG);
		if(cmd==NULL || strlen(cmd)<2){
			cmd="";
		}
		fprintf(stderr, "%s\n", cmd);
		if(modus==RUN){
			if(res==RETURN_OK){
				printf("PASS: \t%s\n", arg[2]);
			}else if(res==RETURN_FAIL){
				printf("FAIL: \t%s [run: %d]\n", arg[2], res);
			}else{
				printf("ERROR:\t%s [run: %d]\n", arg[2], res);
			}
		}else{
			if(res==RETURN_FAIL){
				printf("XFAIL:\t%s\n", arg[2]);
			}else if(res==RETURN_OK){
				printf("XPASS:\t%s [norun: %d]\n", arg[2], res);
			}else{
				printf("ERROR:\t%s [norun: %d]\n", arg[2], res);
			}
		}
		fprintf(stderr, "--------\n");
	}else{
		printf("@toto@ %d (%s)\n", modus, arg[2]);
	}
	return 0;
}
