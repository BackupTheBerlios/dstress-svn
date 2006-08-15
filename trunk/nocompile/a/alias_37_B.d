// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenix@lycos.com>
// @date@	2006-07-29
// @uri@	news:bug-270-3@http.d.puremagic.com/issues/
// @desc@	[Issue 270] Compiler allows and crashes on typedefs of "immediate"-function types

// __DSTRESS_ELINE__ 17

module dstress.nocompile.a.alias_37_B;

alias short foo(byte);

void bar(){
	foo[3] x;
}
