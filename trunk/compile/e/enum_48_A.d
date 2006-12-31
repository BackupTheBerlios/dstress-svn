// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2006-09-15
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=349
// @desc@	[Issue 349] New: Function matching with enums is erratic

module dstress.compile.e.enum_48_A;

enum E : uint{
	A = 1
}

template T(uint a){
	const uint T = a + 1;
}

template T(E e){
	const E T = e;
}

static assert(T!(E.A) == E.A);
