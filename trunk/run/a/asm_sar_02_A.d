// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sar_02_A;

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
			sar AL, 1;
			mov a, EAX;
		}

		if(a != 0x84_20_10_C2){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
