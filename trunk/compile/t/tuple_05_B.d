// $HeadURL$
// $Date$
// $Author$

// @author@	Michael Arntzenius <daekharel@gmail.com>
// @date@	2006-11-21
// @uri@	news:bug-582-3@http.d.puremagic.com/issues/
// @desc@	[Issue 582] New: Cannot slice mixed tuples

module dstress.compile.t.tuple_05_B;

template Tuple(T ...) {
	const Tuple = T[1 .. 3].length;
}

static assert(Tuple!('a', 'b', 'c', float) == 2);

