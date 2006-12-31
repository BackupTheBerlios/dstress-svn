// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-04
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=479
// @desc@	[Issue 479] New: can't compare arrayliteral statically with string

module dstress.compile.o.opEquals_06_B;

static if(['a','b','c','d'] != "abcd"){
	static assert(0);
}
