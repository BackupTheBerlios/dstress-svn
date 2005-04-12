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

#ifdef __GNU_LIBRARY__
#define USE_POSIX
#endif

#ifdef __GLIBC__
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

#define RETURN_OK 0
#define RETURN_FAIL 256
#define crashRun system

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
	return back;
}

void *xmalloc(size_t size)
{
	void *p;
	if (p < 0)
	{
		fprintf(stderr,"Failed to allocate %ld bytes!\n", size);
		exit(1);			
	}
	p = malloc(size);
	if (p == NULL)
	{
		fprintf(stderr,"Failed to allocate %ld bytes!\n", size);
		exit(1);			
	}
	return p;
}

#define malloc xmalloc

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
			if (ReadFile(file,back,size,&numread,NULL) == 1){
				if (numread==size){
					*(back+size+1) = '\x00';
				}else{
					back = "\x00";
				}
			}else{
				back = "\x00";
			}
		}
		CloseHandle(file);
	}
	errno = 0;
	return back;
}
#error no crashRun adaptation for this system available

#else 
#error no loadFile adaptation for this system available
#error no crashRun adaptation for this system available /* like system(char*) but has to return without human intervention even if the application segfaults */

#endif /* WIN32 else */
#endif /* USE_POSIX else */

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

/* extract the FIRST occurance of a given FLAG until the next linebreak */
char* getCaseFlag(const char* data, const char* tag){
	char* begin;
	char* end1;
	char* end2;
	char* back;
	
	if(data!=NULL && tag!=NULL){
		begin = strstr(data, tag);
		if(begin!=NULL){
			begin = begin+strlen(tag);
			end1 = strstr(begin, "\n");
			end2 = strstr(begin, "\r");
			if(end2!=NULL && ((end1!=NULL && end2<end1) || end1==NULL)){
				end1=end2;
			}
			if(end1==NULL){
				end1 = begin + strlen(begin);
			}
			back = malloc(end1-begin+1);
			strncpy(back, begin, end1-begin);
			back[end1-begin+1]='\x00';
			return back;
		}
	}

	return calloc(1,1);
}


int checkErrorMessage(const char* file_, const char* line_, const char* buffer){

	char* file;
	char* line;
	char* dmd;
	char* gdc;

	char* begin;
	char* end1;
	char* end2;

	int back=0;

	/* clean arguments */
	if(strcmp(file_, "")!=0){
		file = malloc(strlen(file_)+1);
		strcpy(file, file_);
	}else{
		file=NULL;
	}
	
	if(strcmp(line_, "")!=0){
		line = malloc(strlen(line_)+1);
		strcpy(line, line_);
	}else{
		line=NULL;
	}
	
	/* gen patterns*/
	if(file!=NULL){
		if(line!=NULL){
			dmd = malloc(strlen(file)+strlen(line)+5);
			dmd[0]='\x00';
			strcat(dmd, file);
			strcat(dmd, "(");
			strcat(dmd, line);
			strcat(dmd, ")");
			gdc = malloc(strlen(file)+strlen(line)+4);
			gdc[0]='\x00';
			strcat(gdc, file);
			strcat(gdc, ":");
			strcat(gdc, line);
			strcat(gdc, ": ");
		}else{
			dmd = malloc(strlen(file)+2);
			dmd[0]='\x00';
			strcat(dmd, file);
			strcat(dmd, "(");
			gdc = malloc(strlen(file)+2);
			gdc[0]='\x00';
			strcat(gdc, file);
			strcat(gdc, ":");
		}
	}else if(line!=NULL){
		dmd = malloc(strlen(line)+5);
		dmd[0]='\x00';
		strcat(dmd, "(");
		strcat(dmd, line);
		strcat(dmd, "): ");
		gdc = malloc(strlen(line)+4);
		gdc[0]='\x00';
		strcat(gdc, ":");
		strcat(gdc, line);
		strcat(gdc, ": ");
	}else{
		dmd=NULL;
		gdc=NULL;
	}

	/* fix filenames */
#ifdef WIN32
	end1="/";
	end2="\\";
#else
	end1="\\";
	end2="/";
#endif

	if(dmd!=NULL){
		while( (begin=strchr(dmd, end1[0])) ){
			begin[0]=end2[0];
		}
	}

	if(gdc!=NULL){
		while( (begin=strchr(gdc, end1[0])) ){
			begin[0]=end2[0];
		}
	}

	/* specific error messages */
		
	if( (dmd!=NULL && strstr(buffer, dmd))
			|| (gdc!=NULL && strstr(buffer, gdc))
			|| (dmd==NULL && gdc==NULL)){
		back=1;
	}

	/* @todo@ check format of all other messages */
	return back;
}

int checkRuntimeErrorMessage(const char* file, const char* line, const char* buffer){
	/* @todo@ */
	return 1;
}


int main(int argc, char* arg[]){
	char* compiler;		/* the compiler */
	char* cmd_arg_general;	/* additional arguments - from enviroment flag "DFLAGS" */
	char* cmd_arg_case;	/* additional arguments - from the testcase file */
	char* buffer;		/* general purpos buffer */
	int modus;		/* test modus: RUN NORUN COMPILE NOCOMPILE */	
	int res;		/* return code from external executions */ 
	char* error_file;	/* expected sourcefile containing the error */
	char* error_line;	/* expected error line */
	int good_error;		/* error contained file and line and matched the expectations */
	
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
	cmd_arg_general = getGeneralFlags();
	buffer = loadFile(arg[2]);
	
	cmd_arg_case = getCaseFlag(buffer, "__DSTRESS_DFLAGS__");
	error_line = getCaseFlag(buffer, "__DSTRESS_ELINE__");
	error_file = getCaseFlag(buffer, "__DSTRESS_EFILE__");

	/* strip spaces */
	while(error_line[0]==' '){
		error_line++;
	}
	for(buffer=error_line+strlen(error_line)-1; buffer && buffer[0]==' '; buffer=error_line+strlen(error_line)-1){
		buffer[0]='\x00';	
	}
	while(error_file[0]==' '){
		error_file++;
	}
	for(buffer=error_file+strlen(error_file)-1; buffer && buffer[0]==' '; buffer=error_file+strlen(error_file)-1){
		buffer[0]='\x00';	
	}

	/* set implicit source file */
	if(strcmp(error_line, "")!=0 && strcmp(error_file, "")==0){
		error_file=arg[2];
	}
	
	/* start working */
	if(modus==COMPILE || modus==NOCOMPILE){
		/* gen command */
		buffer = malloc(strlen(compiler)+strlen(cmd_arg_general)+strlen(cmd_arg_case)+strlen(OBJ)
			+strlen(arg[2])+strlen(TLOG)+64);
		buffer[0]='\x00';
		strcat(buffer, compiler);
		strcat(buffer, " ");
		strcat(buffer, cmd_arg_general);
		strcat(buffer, " ");
		strcat(buffer, cmd_arg_case);
		strcat(buffer, " -c ");
		if(NULL==strstr(buffer, "-od")){
			strcat(buffer, OBJ);
			strcat(buffer, " ");
		}
		strcat(buffer, arg[2]);
		strcat(buffer, " 1> ");
		strcat(buffer, TLOG);
		strcat(buffer, " 2>&1");

		/* test */
		if(modus==COMPILE){
			fprintf(stderr, "compile: %s\n", buffer);
		}else{
			fprintf(stderr, "nocompile: %s\n", buffer);
		}
		res = crashRun(buffer);

		/* diagnostic */
		buffer = loadFile(TLOG);
		fprintf(stderr, "%s\n", buffer);
		good_error = checkErrorMessage(error_file, error_line, buffer); 

		if(strstr(buffer, "Internal error")!= NULL || strstr(buffer, "gcc.gnu.org/bugs")!=NULL){
			printf("ERROR:\t%s (Internal compiler error)\n", arg[2]);
		}else if(modus==COMPILE){
			if(res==RETURN_OK){
				printf("PASS: \t%s\n", arg[2]);
			}else if(res==RETURN_FAIL && good_error){
				if(checkErrorMessage(arg[2], "", buffer)){
					printf("FAIL: \t%s [%d]\n", arg[2], res);
				}else{
					printf("ERROR:\t%s [%d]\n", arg[2], res);
				}
			}else{
				printf("ERROR:\t%s [%d]\n", arg[2], res);
			}
		}else{
			if(res==RETURN_FAIL){
				if(good_error){
					printf("XFAIL:\t%s\n", arg[2]);
				}else{
					printf("FAIL: \t%s\n", arg[2]);
				}
			}else if(res==RETURN_OK){
				printf("XPASS:\t%s\n", arg[2]);
			}else{
				printf("ERROR:\t%s [%d]\n", arg[2], res);
			}
		}
		fprintf(stderr,"--------\n");
	}else if(modus==RUN || modus==NORUN){
		/* gen command */
		buffer = malloc(strlen(compiler)+strlen(cmd_arg_general)+strlen(cmd_arg_case)+strlen(OBJ)
			+strlen(arg[2])*2+strlen(TLOG)+64);
		buffer[0]='\x00';
		strcat(buffer, compiler);
		strcat(buffer, " ");
		strcat(buffer, cmd_arg_general);
		strcat(buffer, " ");
		strcat(buffer, cmd_arg_case);
		strcat(buffer, " ");
		if(NULL==strstr(buffer, "-od")){
			strcat(buffer, OBJ);
			strcat(buffer, " ");
		}
		if(NULL==strstr(buffer, "-of")){
			strcat(buffer, "-of");
			strcat(buffer, arg[2]);
			strcat(buffer, ".exe ");
		}
		strcat(buffer, arg[2]);
		strcat(buffer, " 1> ");
		strcat(buffer, TLOG);
		strcat(buffer, " 2>&1");

		/* test 1/2 */
		if(modus==RUN){
			fprintf(stderr, "run: %s\n", buffer);
		}else{
			fprintf(stderr, "norun: %s\n", buffer);
		}
		res = crashRun(buffer);
		
		/* diagnostic 1/2 */
		buffer = loadFile(TLOG);
		fprintf(stderr, "%s", buffer);
		good_error = checkErrorMessage(error_file, error_line, buffer);
		if(strstr(buffer, "Internal error")!= NULL || strstr(buffer, "gcc.gnu.org/bugs")!=NULL){
			printf("ERROR:\t%s (Internal compiler error)\n", arg[2]);
			fprintf(stderr, "\n--------\n");
			return 0;
		}else if(res==RETURN_FAIL && good_error){
			printf("FAIL: \t%s [%d]\n", arg[2], res);
			fprintf(stderr, "\n--------\n");
			return 0;
		}else if(res!=RETURN_OK){
			printf("ERROR:\t%s [%d]\n", arg[2], res);
			fprintf(stderr, "\n--------\n");
			return 0;
		}
		
		/* test 2/2 */
		buffer = malloc(strlen(arg[2]) + strlen(TLOG) + 24);
		*buffer = '\x00';
		strcat(buffer, arg[2]);
		strcat(buffer, ".exe 1> ");
		strcat(buffer, TLOG);
		strcat(buffer, " 2>&1");
		fprintf(stderr, "%s\n", buffer);
		res=crashRun(buffer);
		
		/* diagnostic 2/2 */
		buffer = loadFile(TLOG);
		if(buffer==NULL || strlen(buffer)<2){
			buffer="";
		}
		fprintf(stderr, "%s\n", buffer);
		good_error = checkRuntimeErrorMessage(error_file, error_line, buffer);
		if(modus==RUN){
			if(res==RETURN_OK){
				printf("PASS: \t%s\n", arg[2]);
			}else if(res==RETURN_FAIL && good_error){
				printf("FAIL: \t%s [run: %d]\n", arg[2], res);
			}else{
				printf("ERROR:\t%s [run: %d]\n", arg[2], res);
			}
		}else{
			if(res==RETURN_FAIL){
				if(good_error){
					printf("XFAIL:\t%s\n", arg[2]);
				}else{
					printf("FAIL: \t%s\n", arg[2]);
				}
			}else if(res==RETURN_OK){
				printf("XPASS:\t%s [norun: %d]\n", arg[2], res);
			}else{
				printf("ERROR:\t%s [norun: %d]\n", arg[2], res);
			}
		}
		fprintf(stderr, "--------\n");
	}else{
		printf("@bug@ %d (%s)\n", modus, arg[2]);
	}
	return 0;
}
