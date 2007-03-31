// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2007-03-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1061
// @desc@	[Issue 1061] "asm inc [;" segfaults compiler.

// __DSTRESS_ELINE__ 23

module dstress.nocompile.a.asm_02_A;

version(D_InlineASM_X86){
	version = test;
}else version(D_InlineAsm_X86_64){
	version = test;
}

version(test){
	void foo() {
		asm {
			inc {;
		}
	}
}else{
	static assert(0, "DSTRESS{XFAIL}: no X86 inline ASM support");
}
