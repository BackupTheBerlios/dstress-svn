// $HeadURL$
// $Date$
// $Author$

// @author@	Reiner Pope <reiner.pope@gmail.com>
// @date@	2007-04-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1113
// @desc@	[Issue 1113] Mixin causes incorrect static if branching

module dstress.compile.m.mixin_35_D;

template Foo(){
	mixin("alias char[] TheType;");
	static assert(is(TheType : char[]));
}

mixin Foo!();
