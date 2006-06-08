// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sbb_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a = 50;

		asm{
			clc;
			mov AL, a;
			sbb AL, 30;
			mov a, AL;
		}

		if(a != 20){
			assert(0);
		}

		a = 50;

		asm{
			stc;
			mov AL, a;
			sbb AL, 30;
			mov a, AL;
		}

		if(a != 19){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
