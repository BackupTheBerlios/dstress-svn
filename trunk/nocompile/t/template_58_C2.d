// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-01-24
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=884
// @desc@	[Issue 884] Segfault in recursive template

module dstress.nocompile.t.template_58_C2;

template Inner(Ts...) {
	const Inner = Inner!((Ts));
}

auto x = Inner!();
