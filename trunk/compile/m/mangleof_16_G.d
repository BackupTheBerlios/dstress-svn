// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-06-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=220

module dstress.compile.m.mangleof_16_G;

alias int delegate (int) x;

template T(char[] str){
	const int T = 1;
}

static assert(T!((x).mangleof));

