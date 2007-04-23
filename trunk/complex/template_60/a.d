// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-01-29
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=902
// @desc@	[Issue 902] Duplicate zero-initialized template member variables

template Foo(T) {
	const uint[1] Foo = 0;
}

uint[] foo() {
	return Foo!(void);
}
