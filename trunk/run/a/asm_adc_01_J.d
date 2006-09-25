// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -fPIC

module dstress.run.a.asm_adc_01_J;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a;

		asm{
			clc;
			mov EBX, 3;
			adc EBX, 5;
			mov a, EBX;
		}

		if(a != 8){
			assert(0);
		}

		asm{
			stc;
			mov EBX, 3;
			adc EBX, 5;
			mov a, EBX;
		}

		if(a != 9){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
