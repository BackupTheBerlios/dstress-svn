// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2006-10-28
// @uri@	news:bug-466-3@http.d.puremagic.com/issues/
// @desc@	[Issue 466] New: dmd prevent this from link , if so please prevent it from compiling

module dstress.compile.m.mangleof_17_A;

class Exception{
}

class ExceptioX{
}

static assert(Exception.mangleof[0 ..$-1] == ExceptioX.mangleof[0 .. $-1]);
