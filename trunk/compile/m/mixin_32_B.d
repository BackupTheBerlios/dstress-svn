// $HeadURL$
// $Date$
// $Author$

// @author@	<onlystupidspamhere@yahoo.se>
// @date@	2007-04-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1154
// @desc@	[Issue 1154] Implicit template return value + mixin results in invalid type deduction

module dstress.compile.m.mixin_32_B;

template foo() {
	mixin("alias int foo;");
}

foo!() bar;

static assert(is(typeof(bar) == int));
