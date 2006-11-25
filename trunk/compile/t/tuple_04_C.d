// $HeadURL$
// $Date$
// $Author$

// @author@	Kirk McDonald <kirklin.mcdonald@gmail.com>
// @date@	2006-11-23
// @uri@	news:bug-586-3@http.d.puremagic.com/issues/
// @desc@	[Issue 586] New: Cannot index tuple with non-type elements

module dstress.compile.t.tuple_04_C;

template Templ(T ...) {
	T[1] x;
}

static assert(is(typeof(Templ!(3, char, int).x) == char));
