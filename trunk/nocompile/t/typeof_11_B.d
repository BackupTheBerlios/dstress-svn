// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2006-09-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=370
// @desc@	[Issue 370] New: Compiler stack overflow on recursive typeof in function declaration.

// __DSTRESS_ELINE__  14

module dstress.nocompile.t.typeof_11_B;

void test(typeof(test) p){
}

