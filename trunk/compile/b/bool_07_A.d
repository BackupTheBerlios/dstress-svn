// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2006-06-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=221
// @desc@	[Issue 221] New: Inconsistent name mangling of bool (a relic of 'bit')

module dstress.compile.b.bool_07_A;

static assert(bool.mangleof == "b");

