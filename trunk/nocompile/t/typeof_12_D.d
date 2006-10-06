// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2006-09-26
// @uri@	news:bug-369-3@http.d.puremagic.com/issues/
// @desc@	[Issue 369] New: "immediate"-function types allowed as part of delegate/function types.

// __DSTRESS_ELINE__ 17

module dstress.nocompile.t.typeof_12_D;

void func() {
}

typeof(func) function() dg2;

void test() {
	 dg2();
}
