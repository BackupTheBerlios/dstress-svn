// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2006-10-28
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=466
// @desc@	[Issue 466] New: dmd prevent this from link , if so please prevent it from compiling

module dstress.compile.m.mangleof_17_A;

class Exception{
}

class ExceptioX{
}

static assert(Exception.mangleof[0 ..$-1] == ExceptioX.mangleof[0 .. $-1]);
