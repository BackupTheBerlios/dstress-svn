// $HeadURL$
// $Date$
// $Author$

// @author@	david <davidl@126.com>
// @date@	2007-03-20
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1072
// @desc@	[Issue 1072] this code should run as the same as previous bug code , but dmd av here

module dstress.compile.a.array_initialization_33_E;

char[] hello(bool do_loop){
	char[] result="";
	for(;do_loop;){
		result ~= `abc`;
	}
	return result;
}

static assert("" == hello(false));
