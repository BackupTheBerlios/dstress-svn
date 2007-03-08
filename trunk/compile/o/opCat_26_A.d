// $HeadURL$
// $Date$
// $Author$

// @author@	John S. Skogtvedt <teleledningsanka@gmail.com>
// @date@	2007-02-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=980
// @desc@	[Issue 980] If a function tries to concatenate a char to a empty array, dmd complains that the function can't be evaluated at compile time

module dstress.compile.o.opCat_26_A;

char[] test(){
	char[] s = "";
	return s ~ "o";
}

const x = test();
static assert(x == "o");
