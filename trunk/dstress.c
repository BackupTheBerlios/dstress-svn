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

/* Beware: the code doesn't care about freeing allocated memory etc. . .. */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <ctype.h>

#define RUN		1
#define NORUN		2
#define COMPILE		4
#define NOCOMPILE	8

/* secure malloc */
void *xmalloc(size_t size){
	void *p;
	if (p < 0){
		fprintf(stderr,"Failed to allocate %zd bytes!\n", size);
		exit(EXIT_FAILURE);
	}
	p = malloc(size);
	if (p == NULL){
		fprintf(stderr,"Failed to allocate %zd bytes!\n", size);
		exit(EXIT_FAILURE);
	}
	return p;
}
#define malloc xmalloc

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
#define USE_POSIX 1
#endif

#if defined(WIN) || defined(WIN32)
#define USE_WINDOWS 1
#endif

#ifdef USE_POSIX

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <regex.h>

#else
#ifdef USE_WINDOWS

#include <windows.h>

#else
#error neither POSIX nor MSWindows detected
#endif /* USE_WINDOWS else */
#endif /* USE_POSIX else */

#define OBJ		"-odobj "
#ifdef USE_WINDOWS
#define TLOG			".\\obj\\log.tmp"
#define CRASH_RUN		".\\crashRun"
#define GDB_SCRIPTER	".\\obj\\gdb.tmp"
#else
#ifdef USE_POSIX
#define TLOG			"./obj/log.tmp"
#define CRASH_RUN		"./crashRun"
#define GDB_SCRIPTER	"./obj/gdb.tmp"
#endif
#endif

char* errorMsg(int good_error){
	return (good_error) ? ("") : " [bad error message]";
}

char* gdbMsg(int good_gdb){
	return (good_gdb) ? ("") : " [bad debugger message]";
}

char* strip(char* buffer){
	if(buffer!=NULL){
		while(isspace(buffer[0])){
			buffer++;
		}

		char* tmp;
		for(tmp=buffer+strlen(buffer)-1; isspace(tmp[0]); tmp=buffer+strlen(buffer)-1){
			tmp[0]='\x00';
		}
	}
	return buffer;
}

/* cleanup "/" versus "\" in filenames */
char* cleanPathSeperator(char* filename){
	char* pos;
#ifdef USE_POSIX
	for(pos=strchr(filename, '\\'); pos; pos=strchr(filename, '\\')){
		*pos='/';
	}
#else
#if USE_WINDOWS
	for(pos=strchr(filename, '/'); pos; pos=strchr(filename, '/')){
		*pos='\\';
	}
#else

#error no cleanPathSeperator available for this system

#endif /* USE_WINDOWS else */
#endif /* USE_POSIX else */
	return filename;
}

char* loadFile(char* filename){
#ifdef USE_POSIX
	char* back = NULL;
	struct stat fileInfo;
	int file = open(filename, O_RDONLY);
	if(errno == 0 && file != 0 && file != -1){
		if(0==fstat(file, &fileInfo)){
			back=malloc(fileInfo.st_size+1);
			fileInfo.st_size = read(file, back, fileInfo.st_size);
			if(fileInfo.st_size>=0){
				*(back+fileInfo.st_size+1) = '\x00';
			}else{
				back = NULL;
			}
		}
		close(file);
	}

	if(back){
		return back;
	}
	if(0==strcmp(filename, TLOG)){
		return calloc(1,sizeof(char));
	}

	fprintf(stderr, "File not found \"%s\" (%s)\n", filename, strerror(errno));
	exit(EXIT_FAILURE);
#else /* USE_POSIX */
#ifdef USE_WINDOWS

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
					back = NULL;
				}
			}else{
				back = NULL;
			}
		}
		CloseHandle(file);
	}
	if(back){
		errno = 0;
		return back;
	}

	fprintf(stderr, "File not found \"%s\"\n", filename);
	exit(EXIT_FAILURE);
#else /* USE_WINDOWS */

#error "no loadFile implementation present"

#endif /* USE_WINDOWS */
#endif /* USE_POSIX else */
}

void writeFile(const char* filename, const char* content){
	size_t len = strlen(content);
	FILE* file = fopen(filename, "w+");

	if(errno == 0 && file != NULL){
		if((fwrite(content, sizeof(char), len, file) != len) || (errno != 0)){
		    fprintf(stderr, "failed to write file \"%s\" (%s)\n", filename, strerror(errno));
		    exit(EXIT_FAILURE);
		}
		if(fclose(file) || (errno != 0)){
		    fprintf(stderr, "failed to close file \"%s\" (%s)\n", filename, strerror(errno));
		    exit(EXIT_FAILURE);
		}
		return;
	}

	fprintf(stderr, "couldn't open file \"%s\" for writing (%s)\n", filename, strerror(errno));
	exit(EXIT_FAILURE);
}

/* query the environment for the compiler name */
char* getCompiler(){
	char* back = getenv("DMD");
	if(back == NULL){
		back = getenv("dmd");
		if(back==NULL){
			back = "dmd";
		}
	}
	return strip(cleanPathSeperator(back));
}

/* query the environment for the debugger name */
char* getGDB(){
	char* back = getenv("GDB");
	if(back == NULL){
		back = getenv("gdb");
		if(back == NULL){
			back = "gdb";
		}
	}
	return strip(cleanPathSeperator(back));
}

/* extract the FIRST occurance of a given TAG until the next linebreak */
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
			return strip(cleanPathSeperator(back));
		}
	}

	return calloc(1,1);
}

/* check compile-time error messages */
int checkErrorMessage(const char* file_, const char* line_, const char* buffer){

	char* file;
	char* line;
	char* dmd;
	char* gdc;

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
			sprintf(dmd, "%s(%s)", file, line);

			gdc = malloc(strlen(file)+strlen(line)+4);
			sprintf(gdc, "%s:%s: ", file, line);
		}else{
			dmd = malloc(strlen(file)+2);
			sprintf(dmd, "%s(", file);

			gdc = malloc(strlen(file)+2);
			sprintf(gdc, "%s:", file);
		}
	}else if(line!=NULL){
		dmd = malloc(strlen(line)+5);
		sprintf(dmd, "(%s): ", line);

		gdc = malloc(strlen(line)+4);
		sprintf(gdc, ":%s: ", line);
	}else{
		return 1;
	}

	/* specific error messages */
#ifdef DEBUG
	fprintf(stderr, "pattern(dmd):\t%s\n", dmd);
	fprintf(stderr, "pattern(gdc):\t%s\n", gdc);
#endif

	if( (dmd!=NULL && strstr(buffer, dmd))
			|| (gdc!=NULL && strstr(buffer, gdc))
			|| (dmd==NULL && gdc==NULL)){
		back=1;
	}

	return back;
}

int checkRuntimeErrorMessage(const char* file_, const char* line_, const char* buffer){
	/* PhobosLong	dir/file.d(2)
	 * Phobos	package.module(2)
	 */

	char* file;
	char* line;
	char* phobos;
	char* phobosLong;

	char* begin;
	char* end;

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
			phobos = malloc(strlen(file)+strlen(line)+5);
			phobos[0]='\x00';
			begin=strrchr(file,'/');
			if(begin){
				begin++;
			}else{
				begin=strrchr(file,'\\');
				if(begin){
					begin++;
				}else{
					begin=file;
				}
			}
			end=strrchr(file,'.');
			strncat(phobos, begin, end-begin);
			strcat(phobos, "(");
			strcat(phobos, line);
			strcat(phobos, ")");

			phobosLong = malloc(strlen(file)+strlen(line)+5);
			sprintf(phobosLong, "%s(%s)", file, line);
		}else{
			phobos = malloc(strlen(file)+2);
			phobos[0]='\x00';
			begin=strrchr(file,'/');
			if(begin){
				begin++;
			}else{
				begin=strrchr(file,'\\');
				if(begin){
					begin++;
				}else{
					begin=file;
				}
			}
			end=strrchr(file,'.');
			strncat(phobos, begin, end-begin);
			strcat(phobos, "(");

			phobosLong = malloc(strlen(file)+2);
			sprintf(phobosLong, "%s(", file);
		}
	}else if(line!=NULL){
		phobos = malloc(strlen(line)+3);
		sprintf(phobos, "(%s)", line);

		phobosLong=NULL;
	}else{
		return 1;
	}

	/* specific error messages */

#ifdef DEBUG
	fprintf(stderr, "pattern(phobosShort):\t%s\n", phobos);
	fprintf(stderr, "pattern(phobosLong):\t%s\n", phobosLong);
#endif

	if( (phobos && strstr(buffer, phobos))
		|| (phobosLong && strstr(buffer, phobosLong)))
	{
		back=1;
	}

	return back;
}

int hadExecCrash(const char* buffer){
	if(strstr(buffer, "Segmentation fault")
			|| strstr(buffer, "Internal error")
			|| strstr(buffer, "gcc.gnu.org/bugs")
			|| strstr(buffer, "EXIT CODE: signal"))
	{
		return 1;
	}
	return 0;
}

/* system call with time-out */
int crashRun(const char* cmd){
#ifdef USE_POSIX
	char* buffer=malloc(4+strlen(CRASH_RUN)+strlen(cmd));
	sprintf(buffer, "\"%s\" %s", CRASH_RUN, cmd);
	system(buffer);
	buffer=loadFile(TLOG);

	if(strstr(buffer, "EXIT CODE: 0")){
		return EXIT_SUCCESS;
	}else if(strstr(buffer, "EXIT CODE: 256")
			|| strstr(buffer, "EXIT CODE: timeout"))
	{
		return EXIT_FAILURE;
	}else{
		return RAND_MAX;
	}
#else

#error comment me out, if your test cases produce neither eternal loops nor Access Violations
	return system(cmd);

#endif /* USE_POSIX else */
}


int main(int argc, char* arg[]){
	char* compiler;		/* the compiler - from enviroment flag "DMD" */
	char* cmd_arg_case;	/* additional arguments - from the testcase file */
	char* buffer;		/* general purpose buffer */
	int modus;		/* test modus: RUN NORUN COMPILE NOCOMPILE */
	int res;		/* return code from external executions */
	char* case_file;
	char* error_file;	/* expected sourcefile containing the error */
	char* error_line;	/* expected error line */
	int good_error;		/* error contained file and line and matched the expectations */
	char* gdb;		/* the debugger - from environment flag "GDB" */
	char* gdb_script;	/* gdb command sequence */
	char* gdb_pattern_raw;	/* POSIX regexp expected in GDB's output */
#ifdef REG_EXTENDED
	regex_t* gdb_pattern;
#endif
	int good_gdb;		/* (gdb test and positive) or (no gdb test)*/

	/* check arguments */
	if(argc != 3){
err:
		if(argc!=0)
			fprintf(stderr,"%s <run|norun|compile|nocompile> <source>\n", arg[0]);
		else
			fprintf(stderr,"dstress <run|norun|compile|nocompile> <source>\n");
		exit(EXIT_FAILURE);
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
	case_file = cleanPathSeperator(strdup(arg[2]));
	compiler = getCompiler();
	gdb = getGDB();
	buffer = loadFile(case_file);

	cmd_arg_case = getCaseFlag(buffer, "__DSTRESS_DFLAGS__");
	error_line = getCaseFlag(buffer, "__DSTRESS_ELINE__");
	error_file = getCaseFlag(buffer, "__DSTRESS_EFILE__");
	gdb_script = getCaseFlag(buffer, "__GDB_SCRIPT__");
	gdb_pattern_raw = getCaseFlag(buffer, "__GDB_PATTERN__");


	/* set implicit source file */
	if(strcmp(error_line, "")!=0 && strcmp(error_file, "")==0){
		error_file=case_file;
	}

	/* gdb pattern */
#ifdef REG_EXTENDED
	if(gdb_pattern_raw!=NULL && gdb_pattern_raw[0]!='\x00'){

		gdb_pattern = malloc(sizeof(regex_t));
		if(regcomp(gdb_pattern, gdb_pattern_raw, REG_EXTENDED)){
			fprintf(stderr, "failed to compile regular expression:\n\t%s\n", gdb_pattern_raw);
			exit(EXIT_FAILURE);
		}else if(gdb_script==NULL){
			fprintf(stderr, "GDB pattern without GDB script\n");
			exit(EXIT_FAILURE);
		}
	}else{
		gdb_pattern = NULL;
	}

	/* gdb script */
	if(gdb_script!=NULL && gdb_script[0]!='\x00'){
		if(gdb_pattern==NULL){
			fprintf(stderr, "GDB script without GDB pattern\n");
			exit(EXIT_FAILURE);
		}
		buffer=gdb_script;
		for(; *buffer; buffer++){
			if(buffer[0]=='\\'){
				if(buffer[1]=='n'){
					buffer[0]=' ';
					buffer[1]='\n';
				}
				buffer++;
			}
		}

		buffer=malloc(strlen(gdb_script)+10);
		strcpy(buffer, gdb_script);
		gdb_script=strcat(buffer, "\n\nquit\ny\n\n");
		good_gdb = 0;
	}else{
	    good_gdb = 1;
	    gdb_script = NULL;
	}

#else

	if(gdb_script && strlen(gdb_script) && gdb_pattern_raw && strlen(gdb_pattern_raw)){
		fprintf(stderr, "WARNING: regex support inactive\n");
	}else if(gdb_script && strlen(gdb_script)){
		fprintf(stderr, "GDB script without GDB pattern\n");
		exit(EXIT_FAILURE);
	}else if(gdb_pattern_raw && strlen(gdb_pattern_raw)){
		fprintf(stderr, "GDB pattern without GDB script\n");
		exit(EXIT_FAILURE);
	}

#endif /* REG_EXTENDED else */



#ifdef DEBUG
	fprintf(stderr, "case:     \"%s\"\n", case_file);
	fprintf(stderr, "compiler: \"%s\"\n", compiler);
	fprintf(stderr, "DFLAGS C: \"%s\"\n", cmd_arg_case);
	fprintf(stderr, "ELINE   : \"%s\"\n", error_line);
	fprintf(stderr, "EFILE   : \"%s\"\n", error_file);
	fprintf(stderr, "GDB Scri: \"%s\"\n", gdb_script);
	fprintf(stderr, "GDB Patt: \"%s\"\n", gdb_pattern_raw);
#endif

	/* start working */
	if(modus==COMPILE || modus==NOCOMPILE){
		/* gen command */
		buffer = malloc(strlen(compiler)+strlen(cmd_arg_case)+strlen(OBJ)
			+strlen(case_file)+strlen(TLOG)+64);
		buffer[0]='\x00';
		strcat(buffer, compiler);
		strcat(buffer, " ");
		strcat(buffer, cmd_arg_case);
		strcat(buffer, " -c ");
		if(NULL==strstr(buffer, "-od")){
			strcat(buffer, OBJ);
			strcat(buffer, " ");
		}
		strcat(buffer, case_file);
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

		if(hadExecCrash(buffer)){
			printf("ERROR:\t%s [internal compiler error]\n", case_file);
		}else if(modus==COMPILE){
			if(res==EXIT_SUCCESS){
				printf("PASS: \t%s\n", case_file);
			}else if(res==EXIT_FAILURE && good_error){
				if(checkErrorMessage(case_file, "", buffer)){
					printf("FAIL: \t%s\n", case_file);
				}else{
					printf("ERROR:\t%s%s\n", case_file, errorMsg(good_error));
				}
			}else{
				printf("ERROR:\t%s%s\n", case_file, errorMsg(good_error));
			}
		}else{
			if(res==EXIT_FAILURE){
				if(good_error){
					printf("XFAIL:\t%s\n", case_file);
				}else{
					printf("FAIL: \t%s%s\n", case_file, errorMsg(good_error));
				}
			}else if(res==EXIT_SUCCESS){
				printf("XPASS:\t%s\n", case_file);
			}else{
				printf("ERROR:\t%s\n", case_file);
			}
		}
		fprintf(stderr,"--------\n");
	}else if(modus==RUN || modus==NORUN){
		/* gen command */
		buffer = malloc(strlen(compiler)+strlen(cmd_arg_case)+strlen(OBJ)
			+strlen(case_file)*2+strlen(TLOG)+64);
		strcpy(buffer, compiler);
		strcat(buffer, " ");
		strcat(buffer, cmd_arg_case);
		strcat(buffer, " ");
		if(NULL==strstr(buffer, "-od")){
			strcat(buffer, OBJ);
			strcat(buffer, " ");
		}
		if(NULL==strstr(buffer, "-of")){
			strcat(buffer, "-of");
			strcat(buffer, case_file);
			strcat(buffer, ".exe ");
		}
		strcat(buffer, case_file);
		strcat(buffer, " 1> ");
		strcat(buffer, TLOG);
		strcat(buffer, " 2>&1");

		/* test 1/3 - compile */
		if(modus==RUN){
			fprintf(stderr, "run: %s\n", buffer);
		}else{
			fprintf(stderr, "norun: %s\n", buffer);
		}
		res = crashRun(buffer);

		/* diagnostic 1/3 */
		buffer = loadFile(TLOG);
		fprintf(stderr, "%s", buffer);
		if(modus==RUN){
			good_error = checkErrorMessage(error_file, error_line, buffer);
		}else{
			good_error = 1;
		}
		if(hadExecCrash(buffer)){
			printf("ERROR:\t%s [internal compiler error]\n", case_file);
			fprintf(stderr, "\n--------\n");
			return  EXIT_SUCCESS;
		}else if(res==EXIT_FAILURE && good_error){
			printf("FAIL: \t%s\n", case_file);
			fprintf(stderr, "\n--------\n");
			return  EXIT_SUCCESS;
		}else if(res!=EXIT_SUCCESS){
			printf("ERROR:\t%s%s\n", case_file, errorMsg(good_error));
			fprintf(stderr, "\n--------\n");
			return  EXIT_SUCCESS;
		}

		/* test 2/3 - run */
		buffer = malloc(strlen(case_file) + strlen(TLOG) + 30);
		sprintf(buffer, "%s.exe 1> %s 2>&1\n", case_file, TLOG);
		fprintf(stderr, "%s\n", buffer);
		res=crashRun(buffer);

		/* diagnostic 2/3 */
		buffer = loadFile(TLOG);
		fprintf(stderr, "%s\n", buffer);
		good_error = checkRuntimeErrorMessage(error_file, error_line, buffer);

#ifdef REG_EXTENDED
		if(!good_gdb){
			/* test 3/3 - gdb */
			writeFile(GDB_SCRIPTER, gdb_script);
			buffer = malloc(strlen(gdb) + strlen(case_file) + strlen(GDB_SCRIPTER) + strlen(TLOG) + 20);
			sprintf(buffer, "%s %s.exe < %s > %s 2>&1", gdb, case_file, GDB_SCRIPTER, TLOG);
			fprintf(stderr, "%s\n", buffer);
			if(EXIT_SUCCESS==crashRun(buffer)){
				/* diagnostic 3/3 */
				buffer = loadFile(TLOG);
				fprintf(stderr, "%s\n", buffer);
				good_gdb = (regexec(gdb_pattern, buffer, 0, NULL, 0)==0);
			}
		}
#endif /* REG_EXTENDED */

		if(modus==RUN){
			if(hadExecCrash(buffer)){
				printf("ERROR:\t%s [test case crash]%s%s", case_file, errorMsg(good_error), gdbMsg(good_gdb));
			}else if(res==EXIT_SUCCESS && good_gdb){
				printf("PASS: \t%s\n", case_file);
			}else if(res==EXIT_FAILURE && good_error && good_gdb){
				printf("FAIL: \t%s\n", case_file);
			}else{
				printf("ERROR:\t%s%s%s\n", case_file, errorMsg(good_error), gdbMsg(good_gdb));
			}
		}else{
			if(res==EXIT_SUCCESS && good_gdb){
				printf("XPASS:\t%s%s%s\n", case_file, errorMsg(good_error), gdbMsg(good_gdb));
			}else if(good_error && good_gdb){
				printf("XFAIL:\t%s%s%s\n", case_file, errorMsg(good_error), gdbMsg(good_gdb));
			}else{
				printf("FAIL:\t%s%s%s\n", case_file, errorMsg(good_error), gdbMsg(good_gdb));
			}
		}
		fprintf(stderr, "--------\n");
	}else{
		printf("@bug@ %d (%s)\n", modus, case_file);
		return EXIT_FAILURE;
	}
	return EXIT_SUCCESS;
}
