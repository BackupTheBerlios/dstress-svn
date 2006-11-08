// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-04
// @uri@	news:bug-479-3@http.d.puremagic.com/issues/
// @desc@	[Issue 479] New: can't compare arrayliteral statically with string

module dstress.compile.o.opEquals_06_E;

const char[] str = "abcd";

static if(str == ['a','b','c','d']){
	// OK
}else{
	static assert(0);
}
