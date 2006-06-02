// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sar_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){	
		uint a = 0x84_20_84_22;
		
		asm{
			mov EAX, a;
			sar AX, 1;
			mov a, EAX;
		}
		
		if(a != 0x84_20_C2_11){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
