// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-25
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=593
// @desc@	[Issue 593] New: can't deduce from arrayliteral

module dstress.compile.c.const_41_A;

const x = ['a', 'b'];

static assert(x == "ab");
