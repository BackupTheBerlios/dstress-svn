/* svn://svn.kuehne.cn/dstress/extract__.c
 *
 * extract compiler flags for DStress test cases
 *
 * Copyright (C) 2004 Thomas Kuehne
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
 */                                             

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

// @WARNING@ works only with ASCII / UTF-8 source files
int main(int argc, char* argv[]){
	if(argc!=2){
		printf("this stdin will be queried for the patter given as first argument\n");
		return -1;
	}
	
	// the longest source line in the test is a bit over 1<<16 bytes long
	size_t length = 1 << 17;
	char* line = malloc(length);
	char* buffer;
	char* found;
	char* pattern=argv[1];
	size_t pattern_length=strlen(pattern);

	errno=0;	
	while(buffer=fgets(line, length, stdin)){
		found = strstr(buffer, pattern);
		
		if(errno!=0){
			break;
		}else if(found!=NULL){
			found+=pattern_length;
			printf("%s", found);
			break;
		}
	}
	
	free(line);
	
	return 0;
}
