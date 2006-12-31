// $HeadURL$
// $Date$
// $Author$

// @author@	Tom <chievo3@gmail.com>
// @date@	2006-11-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=490
// @desc@	[Issue 490] New: Static struct initializer without static attribute aborts dmd with assertion

// __DSTRESS_ELINE__ 19

module dstress.nocompile.s.struct_initialization_09_A;

struct S {
	int a;
}

void foo(){
 	S s = {1};
}
