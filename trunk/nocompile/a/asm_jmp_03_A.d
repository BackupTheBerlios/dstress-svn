// $HeadURL$
// $Date$
// $Author$

// @author@	<matti.niemenmaa+dbugzilla@iki.fi>
// @date@	2007-10-24
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1612
// @desc@	[Issue 1612] New: No file/line number for using an undefined label in inline assembly

module dstress.nocompile.a.asm_jmp_03_A;

// __DSTRESS_ELINE__ 1

version(D_InlineAsm_X86){
	version = test;
}else version(D_InlineAsm_X86_64){
	version = test;
}else{
	pragma(msg, "DSTRESS{XFAIL}: X86 assembler not supported");
	static assert(0);
}

void check(){
        asm {
                jmp foo;
        }
}
