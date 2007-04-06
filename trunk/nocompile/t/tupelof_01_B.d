// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2007-04-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1099
// @desc@	[Issue 1099] weird tupleof behavior in mixins

module dstress.nocompile.t.tupleof_01_B;

template Mix(int a) {
	alias typeof(this) ThisType;
	static assert (ThisType.init.tupleof.length == a);
}


class Foo {
	mixin Mix!(0);
	int foo;
	mixin Mix!(1);
	int bar;
	mixin Mix!(2);
}
