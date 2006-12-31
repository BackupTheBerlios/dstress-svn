// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2006-09-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=369
// @desc@	[Issue 369] New: "immediate"-function types allowed as part of delegate/function types.

// __DSTRESS_ELINE__ 17

module dstress.nocompile.t.typeof_12_C;

void func() {
}

typeof(func) delegate() dg2;

void test() {
	 dg2();
}
