// $HeadURL$
// $Date$
// $Author$

// @author@	Kirk McDonald <kirklin.mcdonald@gmail.com>
// @date@	2006-11-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=586
// @desc@	[Issue 586] New: Cannot index tuple with non-type elements

module dstress.compile.t.tuple_04_A;

template Templ(T ...) {
	T[1] x;
}

static assert(is(typeof(Templ!(float, char, int).x) == char));
