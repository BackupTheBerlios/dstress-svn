// $HeadURL$
// $Date$
// $Author$

// @author@	<aziz.kerim@gmail.com>
// @date@	2007-02-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1850
// @desc@	[Issue 1850] New: The compiler accepts lower case asm registers.

// __DSTRESS_ELINE__ 23

module dstress.nocompile.a.asm_st_01_A;

version(D_InlineAsm_X86){
	version = test;
}else version(D_InlineAsm_X86_64){
	version = test;
}

version(test){
	void check(){
		asm{
			fstp st(1), st(0);
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: X86 assembler not supported");
	static assert(0);
}
