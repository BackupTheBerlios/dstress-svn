// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-09-16
// @uri@	news:bug-353-3@http.d.puremagic.com/issues/
// @desc@	[Issue 353] New: null passed as a char[] template argument, concatenated with a string literal, is a non-constant expression

module dstress.compile.o.opCat_22_D;

const char[] a = "";
const char[] b = "cat" ~ a;

static assert(b == "cat");
