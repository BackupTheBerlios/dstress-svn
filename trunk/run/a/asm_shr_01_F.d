// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_shr_01_F;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){	
		uint a = 0x84_20_10_22;
		
		asm{
			mov CL, 1;
			shr a, CL;
		}
		
		if(a != 0x42_10_08_11){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
