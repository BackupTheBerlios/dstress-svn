// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_shr_02_G;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){	
		uint a = 0x84_20_10_84;
		
		asm{
			mov EAX, a;
			shr AL, 2;
			mov a, EAX;
		}
		
		if(a != 0x84_20_10_21){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
