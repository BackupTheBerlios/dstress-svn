// $HeadURL$
// $Date$
// $Author$

// @author@	<clugdbug@yahoo.com.au>
// @date@	2006-06-23
// @uri@	news:bug-220-3@http.d.puremagic.com/issues/

module dstress.compile.m.mangleof_16_C;

alias int delegate (int) x;

template T(char[] str){
	const int T = 1;
}

static assert(T!(x.mangleof));

