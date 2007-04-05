// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-01-31
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=991
// @desc@	[Issue 991] expression.c:4257: virtual Expression* DotIdExp::semantic(Scope*): Assertion `0' failed.

module dstress.compile.b.bug_expression_4420_A;

template Template(Ts...) {
	alias Ts tuple;
}

static if(!is(typeof(Template!(1, 2).tuple))){
	static assert(0);
}
