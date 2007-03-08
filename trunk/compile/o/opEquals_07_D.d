// $HeadURL$
// $Date$
// $Author$

// @author@	Reiner Pope <reiner.pope@gmail.com>
// @date@	2007-03-03
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1017
// @desc@	[Issue 1027] CTFE doesn't support (string == string)

module dstress.compile.o.opEquals_07_D;

static assert(equals("Alphabet", "alphabet"));

bool equals(char[] a, char[] b){
	return (a != b);
}
