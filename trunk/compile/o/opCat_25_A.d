// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-25
// @uri@	news:bug-595-3@http.d.puremagic.com/issues/
// @desc@	[Issue 595] New: can't append to array/arrayliteral statically

module dstress.compile.o.opCat_25_A;

const char[] a = null;
const char[] b = a ~ 'd';

static assert(b == "d");
