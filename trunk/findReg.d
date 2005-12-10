/*
 * findReg.d - find regressions in DStress logs
 *
 * Copyright (C)
 *		2005 Thomas Kuehne <thomas@kuehne.cn>
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
 * $HeadURL: svn://127.0.0.1/crashRun.c $
 * $Date: 2005-11-13 22:06:32 +0100 (Sun, 13 Nov 2005) $
 * $Author: thomask $
 *
 */

import std.file;
import std.string;
import std.conv;
import std.stdio;
import std.gc;

enum Result{
	UNTESTED,
	PASS,
	XFAIL,
	FAIL,
	XPASS,
	ERROR
}

class Case{
	Result a;
	Result b;
	char[] name;
}

int main(char[][] args){
	if(args is null || args.length != 3){
		fwritefln(stderr, "required arguments: [oldResults] [newResults]");
		return 1;
	}

	const char[] marker = "Torture-Sub-";
	
	char[][] status;
	status ~= "";
	status ~= "PASS";
	status ~= "XFAIL";
	status ~= "FAIL";
	status ~= "XPASS";
	status ~= "ERROR";

	char[][] torture;
	torture ~= "";
	torture ~= " ( -g )";
	torture ~= " ( -inline )";
	torture ~= " ( -fPIC )";
	torture ~= " ( -O )";
	torture ~= " ( -release )";
	torture ~= " ( -g -inline )";
	torture ~= " ( -g -fPIC )";
	torture ~= " ( -g -O )";
	torture ~= " ( -g -release )";
	torture ~= " ( -inline -fPIC )";
	torture ~= " ( -inline -O )";
	torture ~= " ( -inline -release )";
	torture ~= " ( -fPIC -O )";
	torture ~= " ( -fPIC -release )";
	torture ~= " ( -O -release )";
	torture ~= " ( -g -inline -fPIC )";
	torture ~= " ( -g -inline -O )";
	torture ~= " ( -g -inline -release )";
	torture ~= " ( -g -fPIC -O )";
	torture ~= " ( -g -fPIC -release )";
	torture ~= " ( -g -O -release )";
	torture ~= " ( -inline -fPIC -O )";
	torture ~= " ( -inline -fPIC -release )";
	torture ~= " ( -inline -O -release )";
	torture ~= " ( -fPIC -O -release )";
	torture ~= " ( -g -inline -fPIC -O )";
	torture ~= " ( -g -inline -fPIC -release )";
	torture ~= " ( -g -fPIC -O -release )";
	torture ~= " ( -inline -fPIC -O -release )";
	torture ~= " ( -g -inline -fPIC -O -release )";

	Result r;
	char[] name;
	
	void parse(char[] line){
		if(line.length > marker.length && line[0 .. marker.length] == marker){
			int start = marker.length;
			int end = find(line, "/");
			int testNum = toInt(line[start .. end])-1;

			start = find(line, "\t")+1;
			end = find(line, "[");
			if(end < 0){
				end = line.length;
			}

			name = strip(line[start .. end]);
			name ~= torture[testNum];

			start = find(line, "31-") + 3;
			end = find(line, ":");
			
			char[] s = strip(line[start .. end]);
			switch(s){
				case "PASS": r = Result.PASS; break;
				case "XPASS": r = Result.XPASS; break;
				case "FAIL": r = Result.FAIL; break;
				case "XFAIL": r = Result.XFAIL; break;
				case "ERROR": r = Result.ERROR; break;
				default: throw new Exception("unhandled status \""~s~"\" in line \""~line~"\"");
			}
		}else{
			name = null;
		}
	}

	Case[char[]] data;

	// read old
	char[] raw = cast(char[]) read(args[1]);
	foreach(char[] line; splitlines(raw)){
		parse(line);
		if(name !is null){
			Case* c = name in data;
			if(c is null){
				Case cc = new Case;
				cc.name = name;
				data[name] = cc;
				c = &cc;
			}
			c.a = r;
		}
	}
	data.rehash;
	delete raw;
	fullCollect();	

	// read from
	raw = cast(char[]) read(args[2]);
	foreach(char[] line; splitlines(raw)){
		parse(line);
		if(name !is null){
			Case* c = name in data;
			if(c !is null){
				c.b = r;
			}
		}
	}

	char[][] output;
	uint fixCount;

	foreach(Case c; data.values){
		if(c.b > c.a && c.a != Result.UNTESTED){
			output ~= format("%s -> %s:  %s", status[c.a], status[c.b], c.name);
		}else if(c.b < c.a && c.b != Result.UNTESTED){
			fixCount++;
		}
	}
	
	writefln("%s known regressions (%s fixed test cases; %s test cases in total)\n", output.length, fixCount, data.length);
	foreach(char[] line; output.sort){
		writefln("%s", line);
	}

	return 0;
}
