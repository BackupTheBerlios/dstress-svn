// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sar_01_I;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){	
		uint a = 0x84_20_10_22;
		
		asm{
			sar a, 2;
		}
		
		if(a != 0xE1_08_04_08){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
