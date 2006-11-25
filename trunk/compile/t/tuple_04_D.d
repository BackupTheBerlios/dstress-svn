// $HeadURL$
// $Date$
// $Author$

// @author@	Kirk McDonald <kirklin.mcdonald@gmail.com>
// @date@	2006-11-23
// @uri@	news:bug-586-3@http.d.puremagic.com/issues/
// @desc@	[Issue 586] New: Cannot index tuple with non-type elements

module dstress.compile.t.tuple_04_D;

template Templ(T ...) {
	const Templ = T[1];
}

static assert(Templ!(char, 0x12_34_AB_CD, int) == 0x_12_34_AB_CD);
