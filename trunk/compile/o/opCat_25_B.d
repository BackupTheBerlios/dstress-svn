// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-25
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=595
// @desc@	[Issue 595] New: can't append to array/arrayliteral statically

module dstress.compile.o.opCat_25_B;

const char[] a = null;
const char[] b = a ~ ['d'];

static assert(b == "d");
