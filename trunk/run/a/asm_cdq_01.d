// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cdq_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int x = -128;
		uint i = 0x12_3F_FF_FFu;
		uint ii;

		asm{
			mov EAX, x;
			mov EDX, i;
			cdq;
			mov i, EAX;
			mov ii, EDX;
		}

		if(i != 0xFF_FF_FF_80u){
			assert(0);
		}
		if(ii != 0xFF_FF_FF_FFu){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
