// $HeadURL$
// $Date$
// $Author$

// @author@	Michael Arntzenius <daekharel@gmail.com>
// @date@	2006-11-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=582
// @desc@	[Issue 582] New: Cannot slice mixed tuples

module dstress.compile.t.tuple_05_A;

template Tuple(T ...) {
	const Tuple = T[1 .. 3].length;
}

static assert(Tuple!('a', 'b', 'c', 'd') == 2);

