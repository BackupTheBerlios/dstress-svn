// $HeadURL$
// $Date$
// $Author$

// @author@	Tom <chievo3@gmail.com>
// @date@	2006-11-09
// @uri@	news:bug-490-3@http.d.puremagic.com/issues/
// @desc@	[Issue 490] New: Static struct initializer without static attribute aborts dmd with assertion

// __DSTRESS_ELINE__ 19

module dstress.nocompile.s.struct_initialization_09_B;

struct S {
	int a;
}

void foo(){
 	S s = {a:1};
}
