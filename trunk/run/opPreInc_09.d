// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

// @WARNING@ direct use of Phobos

module dstress.run.opPreInc_09;

import std.stdio;

int main() {
	float x = 9f;
	writefln(x);
	writefln(++x);
	assert(x==10f);
	return 0;
}

