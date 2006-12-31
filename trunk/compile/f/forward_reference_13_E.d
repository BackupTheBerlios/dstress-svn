// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-04-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=106

module dstress.compile.f.forward_reference_13_E;

mixin T!(int);

template T(t){
	t a;
}
