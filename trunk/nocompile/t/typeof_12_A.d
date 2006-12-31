// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2006-09-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=368
// @desc@	[Issue 368] New: "immediate"-function types allowed as the return type of functions.

// __DSTRESS_ELINE__ 17

module dstress.nocompile.t.typeof_12_A;

void func(int a) {
}

typeof(func) test() {
	if(true)
		throw new Exception("");
}
