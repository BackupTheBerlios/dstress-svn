/*
 * core test tool for the DStress test suite
 * http://dstress.kuehne.cn
 *
 * Copyright (C)
 * 	2005, 2006 Thomas Kuehne <thomas@kuehne.cn>
 * 	2005 Carlos Santander (Window files)
 * 	2005 Stewart Gordon <smjg_1998@yahoo.com> (Window crashRun)
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

/* Beware: the code doesn't care about freeing allocated memory etc. ... */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <ctype.h>

/* number's choice: XOR and printf :) */
#define MODE_RUN	(0x10000)
#define MODE_NORUN	(0x01000)
#define MODE_COMPILE	(0x00100)
#define MODE_NOCOMPILE	(0x00010)
#define MODE_TORTURE	(0x00002)

#define RES_BASE_MASK	(0xFFFFFF0)
#define RES_PASS	(0x1000000)
#define RES_XFAIL	(0x0100000)
#define RES_XPASS	(0x0010000)
#define RES_FAIL	(0x0001000)
#define RES_ERROR	(0x0000100)
#define RES_UNTESTED	(0x0000010)
#define RES_BAD_GDB	(0x0000004)
#define RES_BAD_MSG	(0x0000002)

#if defined(__GNU_LIBRARY__) || defined(__GLIBC__)
#define USE_POSIX 1
#endif

#if defined(linux) || defined(__FreeBSD__) || defined(__OpenBSD__)
#define USE_POSIX 1
#endif

#if defined(__APPLE__) && defined(__MACH__)
#define USE_POSIX 1
#endif

#if defined(WIN) || defined(WIN32) || defined(WIN64)
#define USE_WINDOWS 1
#endif

/* prefere USE_POSIX over USE_WINDOWS if both APIs are detected */
#ifdef USE_POSIX

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <regex.h>
#include <limits.h>

/* not every STDLIB propperly supports C99's "%z" for printf formating */
/* (I just love those non-conforming headers...) */
#undef ZU

#if !defined(ZU) && defined(SSIZE_MAX)
#if defined(INT_MAX) && SSIZE_MAX == INT_MAX
#define ZU "%u"
#elif defined(LONG_MAX) && SSIZE_MAX == LONG_MAX
#define ZU "%lu"
#elif defined(LLONG_MAX) && SSIZE_MAX == LLONG_MAX
#define ZU "%llu"
#elif defined(SHRT_MAX) && SSIZE_MAX == SHRT_MAX
#define ZU "%hu"
#endif
#endif /* SSIZE_MAX */

#if !defined(ZU) && defined(SIZE_T_MAX)
#if defined(UINT_MAX) && SIZE_T_MAX == UINT_MAX
#define ZU "%u"
#elif defined(ULONG_MAX) && SIZE_T_MAX == ULONG_MAX
#define ZU "%lu"
#elif defined(ULLONG_MAX) && SIZE_T_MAX == ULLONG_MAX
#define ZU "%llu"
#elif defined(USHRT_MAX) && SIZE_T_MAX == USHRT_MAX
#define ZU "%hu"
#endif
#endif /* SIZE_T_MAX */

#ifndef ZU
#include <stdint.h>
#undef ZU
#ifdef PTRDIFF_MAX
#if defined(INT_MAX) && PTRDIFF_MAX == INT_MAX
#define ZU "%u"
#elif defined(LONG_MAX) && PTRDIFF_MAX == LONG_MAX
#define ZU "%lu"
#elif defined(LLONG_MAX) && PTRDIFF_MAX == LLONG_MAX
#define ZU "%llu"
#elif defined(SHRT_MAX) && PTRDIFF_MAX == SHRT_MAX
#define ZU "%hu"
#endif
#endif
#endif /* PTRDIFF_MAX */

#ifndef ZU
#error what is the size of a pointer?
#endif

#else
#ifdef USE_WINDOWS

#include <windows.h>
#define snprintf _snprintf
#ifndef INVALID_FILE_SIZE
#define INVALID_FILE_SIZE (-1)
#endif

/* not every STDLIB supports C99's "%z" for printf formating */
#ifdef WIN32
#define ZU "%u"
#else
#ifdef WIN64
#define ZU "%llu"
#else
#error what is the size of a pointer?
#endif
#endif

#else
#error neither POSIX nor MSWindows API detected
#endif /* USE_WINDOWS else */
#endif /* USE_POSIX else */

#define TORTURE_PREFIX		"torture-"

#ifdef USE_POSIX
#define		CRASH_RUN	"./crashRun 30 2000"
#ifdef USE_VALGRIND
#define		VALGRIND	"valgrind --leak-check=no -q --suppressions=valgrind.suppress"	
#else
#define		VALGRIND	""
#endif
#define		TMP_DIR		"./obj"
#define		RM_DIR		"rm -rf"
#else
#ifdef USE_WINDOWS
#define		VALGRIND	""
#define		TMP_DIR		".\\obj"
#else
#error OS dependent file names not defined
#endif
#endif

char* tmp_dir;

#ifdef USE_WINDOWS
HANDLE originalStdout, originalStderr;
#endif

const char* torture[] = {
	/* 0 args */
	"",

	/* 1 args */
	"-g",
	"-inline",
	"-fPIC",
	"-O",
	"-release",

	/* 2 args */
	"-g -inline",
	"-g -fPIC",
	"-g -O",
	"-g -release",
	"-inline -fPIC",
	"-inline -O",
	"-inline -release",
	"-fPIC -O",
	"-fPIC -release",
	"-O -release",

	/* 3 args */
	"-g -inline -fPIC",
	"-g -inline -O",
	"-g -inline -release",
	"-g -fPIC -O",
	"-g -fPIC -release",
	"-g -O -release",
	"-inline -fPIC -O",
	"-inline -fPIC -release",
	"-inline -O -release",
	"-fPIC -O -release",

	/* 4 args */
	"-g -inline -fPIC -O",
	"-g -inline -fPIC -release",
	"-g -fPIC -O -release",
	"-inline -fPIC -O -release",

	/* 5 args */
	"-g -inline -fPIC -O -release",

	/* 4 args - ommitted */
	"-g -inline -O -release"
};

/* secure malloc */
void *xmalloc(size_t size){
	void *p = malloc(size);
	if (p == NULL){
		fprintf(stderr, "Failed to allocate " ZU " bytes!\n", size);
		exit(EXIT_FAILURE);
	}
	return p;
}
#define malloc xmalloc

/* secure calloc */
void* xcalloc(size_t members, size_t size){
	void* ptr = calloc(members, size);
	if(ptr == NULL){
		fprintf(stderr, "Failed to allocate " ZU " elements"
			"(" ZU " bytes each)!\n", members, size);
		exit(EXIT_FAILURE);
	}
	return ptr;
}
#define calloc xcalloc


void printResult(int result, int modus, char* case_file, FILE* stream){
	char* msg = NULL;
#ifdef DEBUG
	fprintf(stderr, "case: %s, modus: %x, result: %x\n", case_file, modus,
			result);
#endif

	if(result & RES_PASS){
		msg = "PASS: ";
	}else if(result & RES_XFAIL){
		msg = "XFAIL:";
	}else if(result & RES_XPASS){
		msg = "XPASS:";
	}else if(result & RES_FAIL){
		msg = "FAIL: ";
	}else if(result & RES_ERROR){
		msg = "ERROR:";
	}

	fprintf(stream, "%s\t%s%s%s\n", msg, case_file,
			(result & RES_BAD_MSG) ? " [bad error message]" : "",
			(result & RES_BAD_GDB) ? " [bad debugger message]" : "");
}

char* strip(char* buffer){
	char* tmp = NULL;

	if(buffer!=NULL){
		while(isspace(buffer[0])){
			buffer++;
		}

		for(tmp=buffer+strlen(buffer)-1; isspace(tmp[0]); tmp=buffer+strlen(buffer)-1){
			tmp[0]='\x00';
		}
	}
	return buffer;
}

unsigned int genTempFileNameCount;
char* genTempFileName(){
	char* back;
	size_t len;

	len = strlen(tmp_dir) + 128;
	back = malloc(len);

#ifdef USE_POSIX
	snprintf(back, len, "%s/t%x-%x-%x.tmp", tmp_dir, getpid(), rand(), ++genTempFileNameCount);
#else
	snprintf(back, len, "%s\\t%x-%x-%x.tmp", tmp_dir, getpid(), rand(), ++genTempFileNameCount);
#endif

	return back;
}

/* cleanup "/" versus "\" in filenames */
char* cleanPathSeperator(char* filename){
	char* pos = NULL;
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

#error no cleanPathSeperator implementation available for this system

#endif /* USE_WINDOWS else */
#endif /* USE_POSIX else */
	return filename;
}

char* loadFile(char* filename, size_t* len){
#ifdef USE_POSIX
	char* back;
	struct stat fileInfo;
	int file = open(filename, O_RDONLY);

	back = NULL;

	if(errno == 0 && file != 0 && file != -1){
		if(0==fstat(file, &fileInfo)){
			back=malloc(fileInfo.st_size+1);
			fileInfo.st_size = read(file, back, fileInfo.st_size);
			if(fileInfo.st_size>=0){
				*(back+fileInfo.st_size) = '\x00';
				*len = fileInfo.st_size;
			}else{
				back = NULL;
				*len = 0;
			}
		}
		close(file);
	}

	if(back){
		return back;
	}

	fprintf(stderr, "File not found \"%s\" (%s)\n", filename, strerror(errno));
	exit(EXIT_FAILURE);
#else /* USE_POSIX */
#ifdef USE_WINDOWS
	/* @todo@ check for 32bit/64bit */
	char* back;
	DWORD size, numread;
	HANDLE file=CreateFile(filename, GENERIC_READ, FILE_SHARE_READ, NULL,
		OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN, NULL);

	back = NULL;
	size = 0;
	numread = 0;
	if (file != INVALID_HANDLE_VALUE){
		size = GetFileSize(file, NULL);
		if (size != INVALID_FILE_SIZE){
			back=malloc((size+1)*sizeof(char));
			if (ReadFile(file,back,size,&numread,NULL) == 1){
				if (numread==size){
					*(back+size) = '\x00';
					*len = size;
				}else{
					back = NULL;
					*len = 0;
				}
			}else{
				back = NULL;
				*len = 0;
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

#error no loadFile implementation present

#endif /* USE_WINDOWS */
#endif /* USE_POSIX else */
}

void writeFile(const char* filename, const char* content){
	size_t len;
	FILE* file;

	len = strlen(content);
	errno = 0;
	file = fopen(filename, "w+");

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
char* getCompiler(void){
	char* back = getenv("DMD");

	if(back==NULL){
		back = "dmd";
	}

	return strip(cleanPathSeperator(back));
}

/* query the environment for the debugger name */
char* getGDB(void){
	char* back = getenv("GDB");

	if(back==NULL){
		back = "gdb";
	}

	return strip(cleanPathSeperator(back));
}

char* getTortureBlock(void){
	char* back = getenv("DSTRESS_TORTURE_BLOCK");

	if(back!=NULL){
		back = strip(back);
		if(strlen(back)<1){
			back = NULL;
		}
	}

	return back;
}

/* extract the FIRST occurance of a given TAG until the next linebreak */
char* getCaseFlag(const char* data, const char* tag){
	char* begin;
	char* end1;
	char* end2;
	char* back;

	begin = NULL;
	end1 = NULL;
	end2 = NULL;
	back = NULL;

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
			back[end1-begin]='\x00';
			return strip(back);
		}
	}

	back = malloc(1);
	back[0] = 0;
	return back;
}

/* check compile-time error messages */
int checkErrorMessage(const char* file, const char* line, const char* buffer){

	char* dmd;
	char* gdc;
	size_t len;
	int back;

	dmd = NULL;
	gdc = NULL;
	len = 0;
	back = 0;

	/* clean arguments */
	if(file && !file[0]){
		file = NULL;
	}

	if(line && !line[0]){
		line = NULL;
	}

	/* gen patterns*/
	if(file!=NULL){
		if(line!=NULL){
			len = strlen(file)+strlen(line)+3;
			dmd = malloc(len);
			snprintf(dmd, len, "%s(%s)", file, line);

			gdc = malloc(--len);
			snprintf(gdc, len, "%s:%s", file, line);
		}else{
			len = strlen(file)+2;
			dmd = malloc(len);
			snprintf(dmd, len, "%s(", file);

			gdc = malloc(len);
			snprintf(gdc, len, "%s:", file);
		}
	}else if(line!=NULL){
		len = strlen(line)+3;
		dmd = malloc(len);
		snprintf(dmd, len, "(%s)", line);

		gdc = malloc(--len);
		snprintf(gdc, len, ":%s", line);
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

	free(dmd);
	free(gdc);

	return back;
}

int checkRuntimeErrorMessage(const char* file, const char* line, const char* buffer){
	/* PhobosLong	dir/file.d(2)
	 * Phobos	package.module(2)
	 */

	char* phobos;
	char* phobosLong;

	const char* begin;
	const char* end;
	size_t len;

	int back=0;

	phobos = NULL;
	phobosLong = NULL;

	begin = NULL;
	end = NULL;
	len = 0;

	/* clean arguments */
	if(file && !file[0]){
		file = NULL;
	}

	if(line && !line[0]){
		line = NULL;
	}

	/* gen patterns*/
	if(file!=NULL){
		if(line!=NULL){
			len = strlen(file)+strlen(line)+3;
			phobos = malloc(len);
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
			snprintf(phobos, len, "%.*s(%s)",
				(int)(end-begin), begin,
				line);

			phobosLong = malloc(len);
			snprintf(phobosLong, len, "%s(%s)", file, line);
		}else{
			len = strlen(file)+2;
			phobos = malloc(len);
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
			snprintf(phobos, len, "%.*s(", (int)(end-begin), begin);

			phobosLong = malloc(len);
			snprintf(phobosLong, len, "%s(", file);
		}
	}else if(line!=NULL){
		len = strlen(line)+3;
		phobos = malloc(len);
		snprintf(phobos, len, "(%s)", line);

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

	free(phobos);
	if(phobosLong){
		free(phobosLong);
	}

	return back;
}

int hadExecCrash(const char* buffer){
	if(strstr(buffer, "Segmentation fault")
			|| strstr(buffer, "Internal error")
			|| strstr(buffer, "gcc.gnu.org/bugs")
			|| strstr(buffer, "EXIT CODE: signal")
			|| strstr(buffer, "Assertion failure")
			|| strstr(buffer, "Access Violation")
			|| strstr(buffer, "Invalid read of size")
			|| strstr(buffer, "Conditional jump or move depends on uninitialised value")
			|| strstr(buffer, "Use of uninitialised value of size"))
	{
		return 1;
	}
	return 0;
}

/* system call with time-out */
int crashRun(const char* cmd, char** logFile){

	size_t len;
	char* buffer;
	int back;

	*logFile = genTempFileName();
#ifdef USE_POSIX
	len = 20 + strlen(CRASH_RUN) + strlen(cmd) + strlen(*logFile);
	buffer = malloc(len);

	snprintf(buffer, len, "%s %s > %s 2>&1", CRASH_RUN, cmd, *logFile);

	system(buffer);
	free(buffer);

	buffer=loadFile(*logFile, &len);

	/* @todo@ use: len */
	if(strstr(buffer, "EXIT CODE: 0")){
		back = EXIT_SUCCESS;
	}else if(strstr(buffer, "EXIT CODE: 256")
			|| strstr(buffer, "EXIT CODE: timeout"))
	{
		back = EXIT_FAILURE;
	}else{
		back = RAND_MAX;
	}
	free(buffer);

	return back;
#elif defined USE_WINDOWS
	PROCESS_INFORMATION processInfo;
	STARTUPINFO startupInfo;
	SECURITY_ATTRIBUTES sa = {
		sizeof(SECURITY_ATTRIBUTES), NULL, TRUE
	};
	HANDLE tLogFile;
	unsigned long exitCode;
	int timeLeft = 600;	/* time limit in iterations of WFX loop */

	memset(&processInfo, 0, sizeof(PROCESS_INFORMATION));
	memset(&startupInfo, 0, sizeof(STARTUPINFO));
	startupInfo.cb = sizeof(STARTUPINFO);

	tLogFile = CreateFile(*logFile, GENERIC_WRITE,
	  0, &sa, CREATE_ALWAYS, FILE_FLAG_WRITE_THROUGH, NULL);

	if (tLogFile == NULL) {
		printf("ERROR: could not open log file");
		return RAND_MAX;
	}

	SetStdHandle(STD_OUTPUT_HANDLE, tLogFile);
	SetStdHandle(STD_ERROR_HANDLE, originalStdout);

	if (!CreateProcess(NULL, (char*) cmd, NULL, NULL, TRUE, 0, NULL, NULL,
		  &startupInfo, &processInfo)) {
		void *message;

		FormatMessageA(FORMAT_MESSAGE_ALLOCATE_BUFFER
		  | FORMAT_MESSAGE_FROM_SYSTEM, NULL, GetLastError(), 0,
		   (char*) &message, 0, NULL);

		SetStdHandle(STD_OUTPUT_HANDLE, originalStdout);
		SetStdHandle(STD_ERROR_HANDLE, originalStderr);
		CloseHandle(tLogFile);

		/* this should never happen */
		fprintf(stderr, "ERROR running %s:\n", cmd);
		fprintf(stderr, "%s\n", message);
		LocalFree((HLOCAL) message);
		return RAND_MAX;
	}

	/* wait for exit */
	while (TRUE) {
		GetExitCodeProcess(processInfo.hProcess, &exitCode);
		if (exitCode == 0x103) {
			if (--timeLeft == 0) {
				TerminateProcess(processInfo.hProcess, EXIT_FAILURE);
				SetStdHandle(STD_OUTPUT_HANDLE, originalStdout);
				SetStdHandle(STD_ERROR_HANDLE, originalStderr);
				CloseHandle(tLogFile);
				printf("EXIT CODE: timeout\n");
				Sleep(100);
				return RAND_MAX;
			}
			Sleep(100);
		} else {
			SetStdHandle(STD_OUTPUT_HANDLE, originalStdout);
			SetStdHandle(STD_ERROR_HANDLE, originalStderr);

			CloseHandle(tLogFile);

			printf("EXIT CODE: %i\n", exitCode);
			return exitCode;
		}
	}

#else /* USE_WINDOWS */
#error comment me out, if your test cases produce neither eternal loops nor Access Violations

	len = 10 + strlen(cmd) + strlen(*logFile);
	buffer = malloc(len);

	snprintf(buffer, len, "%s > %s 2>&1", cmd, *logFile);

	int i = system(buffer);
	printf("EXIT CODE: %i\n", i);

	return i;
#endif /* USE_POSIX else */
}

int target_compile(int modus, char* compiler, char* arguments, char* case_file,
		char* error_file, char* error_line)
{
	size_t bufferLen;
	char* buffer;
	int res;
	int testResult;
	int good_error;
	char* logFile;

	bufferLen = 0;
	buffer = NULL;
	res = -1;
	testResult = -1;
	good_error = 0;
	logFile = NULL;

	if(!(modus & MODE_COMPILE) && !(modus & MODE_NOCOMPILE)){
		fprintf(stderr, "BUG: badly handled mode %i (->compile)\n",
			modus);
		exit(EXIT_FAILURE);
	}

	/* gen command */
	bufferLen = strlen(compiler) + strlen(arguments) + strlen(tmp_dir)
		+ strlen(case_file) + 21;
	buffer = malloc(bufferLen);
	snprintf(buffer, bufferLen, "%s %s ", compiler, arguments);

	if(NULL == strstr(buffer, "-od")){
		snprintf(buffer, bufferLen, "%s %s -od%s -c %s",
			compiler, arguments, tmp_dir, case_file);
	}else{
		snprintf(buffer, bufferLen, "%s %s -c %s",
			compiler, arguments, case_file);
	}

	/* test */
	if(modus & MODE_COMPILE){
		printf("compile: %s\n", buffer);
	}else{
		printf("nocompile: %s\n", buffer);
	}
	res = crashRun(buffer, &logFile);
	free(buffer);

	/* diagnostic */
	buffer = loadFile(logFile, &bufferLen);
	printf("%.*s\n", (int)bufferLen, buffer);
	remove(logFile);
	free(logFile);
	good_error = checkErrorMessage(error_file, error_line, buffer);

	if(hadExecCrash(buffer)){
		testResult = RES_ERROR;
	}else if(modus & MODE_COMPILE){
		if(res == EXIT_SUCCESS){
			testResult = RES_PASS;
		}else if(res == EXIT_FAILURE){
			testResult = RES_FAIL | (good_error ? 0 : RES_BAD_MSG);
		}else{
			testResult = RES_ERROR | (good_error ? 0 : RES_BAD_MSG);
		}
	}else{
		if(res == EXIT_FAILURE){
			if(good_error){
				testResult = RES_XFAIL;
			}else{
				testResult = RES_FAIL | RES_BAD_MSG;
			}
		}else if(res == EXIT_SUCCESS){
			testResult = RES_XPASS;
		}else{
			testResult = RES_ERROR;
		}
	}

	free(buffer);

	return testResult;
}

int target_run(int modus, char* compiler, char* arguments, char* case_file,
	char* error_file, char* error_line
#ifdef REG_EXTENDED
	, char* gdb, char* gdb_script, regex_t* gdb_pattern
#endif
	)
{
	size_t bufferLen;
	char* buffer;
	int res;
	int testResult;
	int good_error;
	char* logFile;
	char* gdb_scripter;
	int good_gdb;

	bufferLen = 0;
	buffer = NULL;
	res = -1;
	testResult = -1;
	good_error = 0;
	logFile = NULL;
	good_gdb = 0;
	gdb_scripter = NULL;

	if(!(modus & MODE_RUN) && !(modus & MODE_NORUN)){
		fprintf(stderr, "BUG: badly handled mode %i (->run)\n", modus);
		exit(EXIT_FAILURE);
	}

	/* gen command */

	bufferLen = strlen(compiler) + strlen(arguments) + strlen(tmp_dir)
			+ strlen(case_file) * 2 + 64;
	buffer = malloc(bufferLen);
	snprintf(buffer, bufferLen, "%s %s ", compiler, arguments);

	if(NULL == strstr(buffer, "-od")){
		if(NULL == strstr(buffer, "-of")){
			snprintf(buffer, bufferLen,
				"%s %s -od%s -of%s.exe %s",
				compiler, arguments, tmp_dir, case_file,
				case_file);
		}else{
			snprintf(buffer, bufferLen,
				"%s %s -od%s %s",
				compiler, arguments, tmp_dir, case_file);
		}
	}else if(NULL == strstr(buffer, "-of")){
		snprintf(buffer, bufferLen,
			"%s %s -of%s.exe %s",
			compiler, arguments, case_file, case_file);
	}else{
		snprintf(buffer, bufferLen, "%s %s %s",
			compiler, arguments, case_file);
	}

	/* test 1/3 - compile */
	if(modus & MODE_RUN){
		printf("run: %s\n", buffer);
	}else{
		printf("norun: %s\n", buffer);
	}
	res = crashRun(buffer, &logFile);
	free(buffer);

	/* diagnostic 1/3 */
	buffer = loadFile(logFile, &bufferLen);
	printf("%.*s", (int)bufferLen, buffer);
	remove(logFile);
	free(logFile);

	if(modus & MODE_RUN){
		good_error = checkErrorMessage(error_file, error_line,
			buffer);
	}else{
		good_error = 1;
	}

	if(hadExecCrash(buffer)){
		free(buffer);
		return RES_ERROR;
	}else{
		free(buffer);
		if((res == EXIT_FAILURE) && good_error){
			return RES_FAIL;
		}else if(res!=EXIT_SUCCESS){
			return RES_ERROR | (good_error ? 0 : RES_BAD_MSG);
		}
	}

	/* test 2/3 - run */
	if((modus & MODE_NORUN) && (strstr(case_file, "/asm_")
				|| strstr(case_file, "\\asm_")))
	{
		/* Valgrind doesn't support privileged instructions */
		goto no_valgrind;
	}else if(!strstr(case_file, "/asm_") && !strstr(case_file, "\\asm_")){
		/* FIXME asm workaround due to Valgrind bugs (mainly SSE3) */
		goto no_valgrind;
	}else if(VALGRIND && VALGRIND[0]){
		bufferLen = strlen(VALGRIND) + strlen(case_file) + 8;
		buffer = malloc(bufferLen);
		snprintf(buffer, bufferLen, "%s %s.exe", VALGRIND, case_file);
	}else{
no_valgrind:
		bufferLen = strlen(case_file) + 8;
		buffer = malloc(bufferLen);
		snprintf(buffer, bufferLen, "%s.exe", case_file);
	}
	printf("%s\n", buffer);
	res=crashRun(buffer, &logFile);
	free(buffer);

	/* diagnostic 2/3 */
	buffer = loadFile(logFile, &bufferLen);
	printf("%.*s\n", (int) bufferLen, buffer);
	remove(logFile);
	free(logFile);

	if(modus & MODE_NORUN){
		good_error = checkRuntimeErrorMessage(error_file, error_line,
				buffer);
	}else{
		good_error = 1;
	}

#ifdef REG_EXTENDED
	if(((res==EXIT_SUCCESS && (modus & MODE_RUN))
			||(res==EXIT_SUCCESS && (modus & MODE_RUN)))
			&& gdb_script != NULL)
	{
		free(buffer);
		good_gdb = 0;
		/* test 3/3 - gdb */
		gdb_scripter = genTempFileName();
		writeFile(gdb_scripter, gdb_script);
		bufferLen = strlen(gdb) + strlen(case_file)
			+ strlen(gdb_scripter) + 20;
		buffer = malloc(bufferLen);
		snprintf(buffer, bufferLen, "%s %s.exe < %s",
			gdb, case_file, gdb_scripter);
		printf("%s\n", buffer);
		if(EXIT_SUCCESS==crashRun(buffer, &logFile)){
			/* diagnostic 3/3 */
			buffer = loadFile(logFile, &bufferLen);
			printf("%.*s\n", (int)bufferLen, buffer);
			good_gdb = (regexec(gdb_pattern, buffer, 0, NULL, 0)==0);
		}
		remove(logFile);
		remove(gdb_scripter);
	}else{
		good_gdb = 1;
	}
#else
	good_gdb = 1;
#endif /* REG_EXTENDED else */

	if(modus & MODE_RUN){
		if(hadExecCrash(buffer)){
			testResult = RES_ERROR;
		}else if((res==EXIT_SUCCESS) && good_gdb){
			testResult = RES_PASS;
		}else if((res==EXIT_FAILURE) && good_error && good_gdb){
			testResult = RES_FAIL;
		}else{
			testResult = RES_ERROR | (good_error ? 0 : RES_BAD_MSG)
				| (good_gdb ? 0 : RES_BAD_GDB);
		}
	}else{
		if(res==EXIT_SUCCESS){
			testResult = RES_XPASS;
		}else if(good_error && good_gdb){
			testResult = RES_XFAIL;
		}else{
			testResult = RES_FAIL | (good_error ? 0 : RES_BAD_MSG)
				| (good_gdb ? 0 : RES_BAD_GDB);
		}
	}
	free(buffer);

	return testResult;
}

int main(int argc, char* arg[]){

	char* compiler;		/* the compiler - from enviroment flag "DMD" */
	char* cmd_arg_case;	/* additional arguments - from the testcase file */
	char* buffer;		/* general purpose buffer */
	size_t bufferLen;
	int index;
	int modus;		/* test modus: RUN NORUN COMPILE NOCOMPILE */
	char* case_file;
	int case_result;
	int torture_result[sizeof(torture)/sizeof(char*)];
	char* torture_block_global;
	char* torture_block_case;
	char* torture_require;
	char* error_file;	/* expected sourcefile containing the error */
	char* error_line;	/* expected error line */
	char* gdb;		/* the debugger - from environment flag "GDB" */
	char* gdb_script;	/* gdb command sequence */
	char* gdb_pattern_raw;	/* POSIX regexp expected in GDB's output */
#ifdef REG_EXTENDED
	regex_t* gdb_pattern;
#endif

	compiler	= NULL;
	cmd_arg_case	= NULL;
	buffer		= NULL;
	bufferLen 	= 0;
	modus 		= -1;
	case_file 	= NULL;
	torture_block_global	= NULL;
	torture_block_case	= NULL;
	torture_require	= NULL;
	error_file 	= NULL;
	error_line 	= NULL;
	gdb		= NULL;
	gdb_script	= NULL;
	gdb_pattern_raw = NULL;
#ifdef REG_EXTENDED
	gdb_pattern 	= NULL;
#endif

	/* check arguments */
	if(argc != 3){
err:
		fprintf(stderr, "DStress test executer (revision 1083)\n"
			"Copyright by Thomas Kuehne <thomas@kuehne.cn> 2005, 2006\n"
			"\n");

		if(argc!=0){
			fprintf(stderr,
				"%s <run|norun|compile|nocompile> <source>\n",
				arg[0]);
		}else{
			fprintf(stderr,
				"dstress <run|norun|compile|nocompile>"
				" <source>\n");
		}

		fprintf(stderr, "\n"
		"== eniroment settings (usually $NAME or %%NAME%%)  ==\n"
		"* DMD                - compiler (including standard arguments)\n"
		"* GDB                - debugger (including standard arguments)\n");
		fprintf(stderr, "\n"
		"== case setting (line in the case source) ==\n"
		"* __DSTRESS_DFLAGS__ - additional compiler arguments\n"
		"only evaluated if it is a \"nocompile\" or \"norun\" test:\n"
		"* __DSTRESS_ELINE__  - expected source line to throw an error message\n"
		"* __DSTRESS_EFILE__  - expected source file to throw an error message\n"
		"                       (defaults to the case file)\n");
		fprintf(stderr,
		"only evaluated if it is a \"run\" or \"norun\" test:\n"
		"* __GDB_SCRIPT__     - command sequence to feed to the debugger\n"
		"                       (use \\n to encode a line break)\n"
		"* __GDB_PATTERN__    - expected regular expression in the debugger's\n"
		"                       output\n");
		fprintf(stderr, "\n"
		"== note ==\n"
		"* the current directory is required to contain the sub-directory \"obj\"\n"
		"  (used for temporary files)\n"
		);
		exit(EXIT_FAILURE);
	}

	modus = 0;
	if(0==strncmp(arg[1], TORTURE_PREFIX, strlen(TORTURE_PREFIX))){
		modus |= MODE_TORTURE;
		arg[1] += strlen(TORTURE_PREFIX);
	}
	if(0==strcmp(arg[1], "run")){
		modus |= MODE_RUN;
	}else if(0==strcmp(arg[1], "norun")){
		modus |= MODE_NORUN;
	}else if(0==strcmp(arg[1], "compile")){
		modus |= MODE_COMPILE;
	}else if(0==strcmp(arg[1], "nocompile")){
		modus |= MODE_NOCOMPILE;
	}else{
		goto err;
	}

	/* gen flags */
	case_file = cleanPathSeperator(arg[2]);
	compiler = getCompiler();
	gdb = getGDB();
	torture_block_global = getTortureBlock();
	buffer = loadFile(case_file, &bufferLen);
	bufferLen = 0;

	cmd_arg_case =  cleanPathSeperator(getCaseFlag(buffer, "__DSTRESS_DFLAGS__"));
	error_line = getCaseFlag(buffer, "__DSTRESS_ELINE__");
	error_file =  cleanPathSeperator(getCaseFlag(buffer, "__DSTRESS_EFILE__"));
	gdb_script = getCaseFlag(buffer, "__GDB_SCRIPT__");
	gdb_pattern_raw = getCaseFlag(buffer, "__GDB_PATTERN__");
	torture_block_case = getCaseFlag(buffer, "__DSTRESS_TORTURE_BLOCK__");
	torture_require = getCaseFlag(buffer, "__DSTRESS_TORTURE_REQUIRE__");

	free(buffer);

	/* tmp_dir */
	if(!cmd_arg_case || !cmd_arg_case[0]){
		tmp_dir = TMP_DIR;
	}else{
		pid_t pid;
		pid = getpid();
		bufferLen = strlen(TMP_DIR) + 4 + sizeof(pid_t) * 4;
		buffer = malloc(bufferLen);
		snprintf(buffer, bufferLen, "%s/_%X", TMP_DIR, pid);
		tmp_dir = cleanPathSeperator(buffer);
		if(mkdir(tmp_dir, 0770)){
			fprintf(stderr, "failed to create tmp dir: %s (%d, %s)\n",
					tmp_dir, errno, strerror(errno));
			return EXIT_FAILURE;
		}
	}

	/* set implicit source file */
	if(strcmp(error_line, "")!=0 && strcmp(error_file, "")==0){
		error_file=case_file;
	}

	/* gdb pattern */
#ifdef REG_EXTENDED
	if(gdb_pattern_raw!=NULL && gdb_pattern_raw[0]!='\x00'){

		gdb_pattern = malloc(sizeof(regex_t));
		if(regcomp(gdb_pattern, gdb_pattern_raw, REG_EXTENDED | REG_NOSUB)){
			fprintf(stderr, "failed to compile regular expression:"
				"\n\t%s\n", gdb_pattern_raw);
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

		bufferLen = strlen(gdb_script)+11;
		buffer=malloc(bufferLen);
		snprintf(buffer, bufferLen, "%s\n\nquit\ny\n\n", gdb_script);
		gdb_script=buffer;
	}else if(gdb_script){
		free(gdb_script);
		gdb_script = NULL;
	}

#else

	if(gdb_script && strlen(gdb_script)){
		if(gdb_pattern_raw && strlen(gdb_pattern_raw)){
			fprintf(stderr, "WARNING: GDB/regex support inactive\n");
		}else{
			fprintf(stderr, "GDB script without GDB pattern\n");
			exit(EXIT_FAILURE);
		}
	}else if(gdb_pattern_raw && strlen(gdb_pattern_raw)){
		fprintf(stderr, "GDB pattern without GDB script\n");
		exit(EXIT_FAILURE);
	}

#endif /* REG_EXTENDED else */

#ifdef DEBUG
	fprintf(stderr, "case    : \"%s\"\n", case_file);
	fprintf(stderr, "compiler: \"%s\"\n", compiler);
	fprintf(stderr, "DFLAGS C: \"%s\"\n", cmd_arg_case);
	fprintf(stderr, "ELINE   : \"%s\"\n", error_line);
	fprintf(stderr, "EFILE   : \"%s\"\n", error_file);
#ifdef REG_EXTENDED
	fprintf(stderr, "GDB Scri: \"%s\"\n", gdb_script);
	fprintf(stderr, "GDB Patt: \"%s\"\n", gdb_pattern_raw);
#endif
	fprintf(stderr, "block G : \"%s\"\n", torture_block_global);
	fprintf(stderr, "block C : \"%s\"\n", torture_block_case);
	fprintf(stderr, "modus   : %x\n", modus);
#endif


	/* let's get serious */
#ifdef USE_WINDOWS
	originalStdout = GetStdHandle(STD_OUTPUT_HANDLE);
	originalStderr = GetStdHandle(STD_ERROR_HANDLE);
#endif

	if(modus & MODE_TORTURE){
		if((modus & (MODE_COMPILE | MODE_NOCOMPILE))
			&& (modus & (MODE_RUN | MODE_NORUN)))
		{
			fprintf(stderr, "BUG: unhandled torture modus %x\n", modus);
			exit(EXIT_FAILURE);
		}else if(!(modus & (MODE_COMPILE | MODE_NOCOMPILE | MODE_RUN | MODE_NORUN))){
			fprintf(stderr, "BUG: unhandled torture modus %x\n", modus);
			exit(EXIT_FAILURE);
		}

		bufferLen = strlen(torture[(sizeof(torture) / sizeof(char*))-1])
			+ 128 + strlen(cmd_arg_case) + 3;

		if(torture_block_case!=NULL && strlen(torture_block_case)<1){
			torture_block_case=NULL;
		}

		buffer = malloc(bufferLen);
		for(index=0; index < sizeof(torture)/sizeof(char*); index++){
			if((torture_block_global && strstr(torture[index], torture_block_global))
				|| (torture_block_case && strstr(torture[index], torture_block_case))
				|| (torture_require && !strstr(torture[index], torture_require)))
			{
				torture_result[index]=RES_UNTESTED;
				continue;
			}

			buffer[0]=0;
			snprintf(buffer, bufferLen, "%s %s", torture[index], cmd_arg_case);

			if(modus & (MODE_COMPILE | MODE_NOCOMPILE)){
				torture_result[index] = target_compile(modus,
					compiler, buffer, case_file,
					error_file, error_line);
			}else if(modus & (MODE_RUN | MODE_NORUN)){
				torture_result[index] = target_run(modus,
					compiler, buffer, case_file,
					error_file, error_line
#ifdef REG_EXTENDED
					, gdb, gdb_script, gdb_pattern
#endif
				);
			}

			printf("Torture-Sub-%i/" ZU "-", index+1,
					sizeof(torture)/sizeof(char*));
			printResult(torture_result[index], modus, case_file,
					stdout);
			printf("--------\n");
		}
	}else{
		if(torture_require && !torture_require[0]){
			if(!cmd_arg_case || !cmd_arg_case[0]){
				torture_require = cmd_arg_case;
			}else{
				bufferLen = strlen(cmd_arg_case);
				bufferLen += strlen(torture_require);
				bufferLen += 2;
				buffer = malloc(bufferLen);
				snprintf(buffer, bufferLen, "%s %s", cmd_arg_case, torture_require);
				cmd_arg_case = buffer;
			}
		}
		if(modus & (MODE_RUN | MODE_NORUN)){
			case_result = target_run(modus, compiler, cmd_arg_case,
					case_file, error_file, error_line
#ifdef REG_EXTENDED
					, gdb, gdb_script, gdb_pattern
#endif
					);
		}else if(modus & (MODE_COMPILE | MODE_NOCOMPILE)){
			case_result = target_compile(modus, compiler,
					cmd_arg_case, case_file, error_file,
					error_line);
		}else{
			fprintf(stderr, "BUG: unhandled non-torture modus %x\n", modus);
			exit(EXIT_FAILURE);
		}

		printf("Torture-Sub-1/" ZU "-",
			sizeof(torture)/sizeof(char*));
		printResult(case_result, modus, case_file, stdout);
	}

	if(strcmp(TMP_DIR, tmp_dir)){
		bufferLen = strlen(tmp_dir);
		bufferLen += strlen(RM_DIR);
		bufferLen += 2;
		buffer = malloc(bufferLen);
		snprintf(buffer, bufferLen, "%s %s", RM_DIR, tmp_dir);
		system(buffer);
	}
	exit(EXIT_SUCCESS);
}
