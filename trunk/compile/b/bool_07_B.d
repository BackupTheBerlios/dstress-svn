// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2006-06-23
// @uri@	news:bug-221-3@http.d.puremagic.com/issues/
// @desc@	[Issue 221] New: Inconsistent name mangling of bool (a relic of 'bit')

module dstress.compile.b.bool_07_B;

static assert((void function(bool)).mangleof == "PFbZv");

