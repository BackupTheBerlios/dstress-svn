// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-09-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=353
// @desc@	[Issue 353] New: null passed as a char[] template argument, concatenated with a string literal, is a non-constant expression

module dstress.compile.o.opCat_21_E;

const char[] a = null;
const char[] b = "cat";
const char[] c = a ~ b;

static assert(b == "cat");
