// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-25
// @uri@	news:bug-593-3@http.d.puremagic.com/issues/
// @desc@	[Issue 593] New: can't deduce from arrayliteral

module dstress.compile.c.const_41_A;

const x = ['a', 'b'];

static assert(x == "ab");
