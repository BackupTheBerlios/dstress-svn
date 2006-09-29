// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2006-09-26
// @uri@	news:bug-370-3@http.d.puremagic.com/issues/
// @desc@	[Issue 370] New: Compiler stack overflow on recursive typeof in function declaration.

module dstress.compile.t.typeof_11_A;

void test(typeof(&test) p){
}

