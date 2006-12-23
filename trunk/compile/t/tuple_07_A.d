// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-12
// @uri@	news:bug-494-3@http.d.puremagic.com/issues/
// @desc@	[Issue 494] New: template's variadic argument can't use as type

module dstress.compile.t.tuple_07_A;

template test(TA...){
	const TA[0] test = TA[0].init;
}

static assert(test!(char) == 0xFF);

