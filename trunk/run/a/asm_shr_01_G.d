// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_shr_01_G;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){	
		ubyte a = 0x84;
		
		asm{
			shr a, 2;
		}
		
		if(a != 0x21){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
