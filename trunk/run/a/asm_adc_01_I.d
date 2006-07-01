// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_adc_01_I;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short a;

		asm{
			clc;
			mov BX, 3;
			adc BX, 5;
			mov a, BX;
		}

		if(a != 8){
			assert(0);
		}

		asm{
			stc;
			mov BX, 3;
			adc BX, 5;
			mov a, BX;
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
