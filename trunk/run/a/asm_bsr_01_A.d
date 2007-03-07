// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bsr_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0x30000;

		asm{
			bsr EAX, a;
			mov a, EAX;
		}

		if(a != 17){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
