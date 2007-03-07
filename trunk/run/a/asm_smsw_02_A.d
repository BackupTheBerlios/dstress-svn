// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_smsw_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){

		uint a = 0;

		asm{
			smsw EAX;
			mov a, EAX;
		}

		if(a & 0xFFFF == 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
