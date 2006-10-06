// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2006-09-26
// @uri@	news:bug-368-3@http.d.puremagic.com/issues/
// @desc@	[Issue 368] New: "immediate"-function types allowed as the return type of functions.

// __DSTRESS_ELINE__ 17

module dstress.nocompile.t.typeof_12_B;

void func(int a) {
}

typeof(func) test() {
}
