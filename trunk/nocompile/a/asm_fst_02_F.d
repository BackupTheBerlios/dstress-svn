// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 20

module dstress.nocompile.a.asm_fst_02_F;

version(D_InlineAsm_X86){
	version = test;
}else version(D_InlineAsm_X86_64){
	version = test;
}

version(test){
	void main(){
		real x;
		
		asm{
			fst x;
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline x86 asm support");
	static assert(0);
}
