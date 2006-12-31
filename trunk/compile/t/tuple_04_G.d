// $HeadURL$
// $Date$
// $Author$

// @author@	Kirk McDonald <kirklin.mcdonald@gmail.com>
// @date@	2006-11-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=586
// @desc@	[Issue 586] New: Cannot index tuple with non-type elements

module dstress.compile.t.tuple_04_G;

template Templ(T ...) {
	const Templ = T[1];
}

static assert(Templ!(1, 0x12_34_AB_CD, 4) == 0x_12_34_AB_CD);
