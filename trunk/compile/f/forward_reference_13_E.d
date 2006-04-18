// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-04-14
// @uri@	news:bug-106-3@http.d.puremagic.com/bugzilla/

module dstress.compile.f.forward_reference_13_E;

mixin T!(int);

template T(t){
	t a;
}
