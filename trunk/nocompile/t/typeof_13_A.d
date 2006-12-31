// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <brunodomedeiros+bugz@gmail.com>
// @date@	2006-09-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=371
// @desc@	[Issue 371] New: ICE on mutual recursive typeof in function declarations

module dstress.nocompile.t.typeof_13_A;

void funcA( typeof(&funcB) p) {
}

void funcB( typeof(&funcA) p) {
}
