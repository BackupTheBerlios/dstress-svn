// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2007-04-13
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1142
// @desc@	[Issue 1142] .stringof performs semantic analysis

module dstress.compile.s.stringof_01_A;

static assert("undefined" == (undefined).stringof);
