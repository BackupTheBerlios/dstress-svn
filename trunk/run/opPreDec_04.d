// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-04-18
// @uri@	news:d402bj$nc0$6@digitaldaemon.com

// @WARNING@ direct use of Phobos

module dstress.run.opPreInc_04;

import std.stdio;

int main() {
	ushort x = 9;
	writefln(x);
	writefln(--x);
	assert(x==8);
	return 0;
}

