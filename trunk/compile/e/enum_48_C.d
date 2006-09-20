// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-09-15
// @uri@	news:bug-349-3@http.d.puremagic.com/issues/
// @desc@	[Issue 349] New: Function matching with enums is erratic

module dstress.compile.e.enum_48_C;

enum E : uint{
	A = 1
}

template T(uint a){
	const uint T = a + 1;
}

template T(E e){
	const E T = e;
}

static assert(T!(1) == 2);
