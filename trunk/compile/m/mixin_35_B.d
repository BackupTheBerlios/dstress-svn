// $HeadURL$
// $Date$
// $Author$

// @author@	Reiner Pope <reiner.pope@gmail.com>
// @date@	2007-04-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1113
// @desc@	[Issue 1113] Mixin causes incorrect static if branching

module dstress.compile.m.mixin_35_B;

template Foo(){
	char[] dummy;

	mixin("alias char[] TheType;");

	static if (is(TheType : char[]))
		const int Bar = 13;
	else
		static assert(false);
}

static assert(13 == Foo!().Bar);
