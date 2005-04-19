// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

// @WARNING@ direct use of Phobos

module dstress.run.opPreInc_08;

import std.stdio;

int main() {
	ulong x = 9l;
	writefln(x);
	writefln(--x);
	assert(x==8l);
	return 0;
}

