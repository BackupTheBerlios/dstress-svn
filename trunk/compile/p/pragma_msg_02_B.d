// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-02-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=934
// @desc@	[Issue 934] forward reference by pragma(msg) in template: "mtype.c:550: virtual Expression* Type::getProperty(Loc, Identifier*): Assertion `deco' failed"

module dstress.compile.p.pragma_msg_02_B;

template Templ(T) {
	alias T Type;
	pragma(msg, Type.mangleof);
}

Templ!(int).Type x;

static assert(is(typeof(x) == int));
