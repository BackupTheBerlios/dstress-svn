// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-04
// @uri@	news:bug-479-3@http.d.puremagic.com/issues/
// @desc@	[Issue 479] New: can't compare arrayliteral statically with string

module dstress.compile.o.opEquals_06_A;

static if(['a','b','c','d'] == "abcd"){
	// OK 
}else{
	static assert(0);
}
