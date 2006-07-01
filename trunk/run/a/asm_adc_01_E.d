// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_adc_01_E;

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
			mov AX, 3;
			adc AX, 5;
			mov a, AX;
		}

		if(a != 8){
			assert(0);
		}

		asm{
			stc;
			mov AX, 3;
			adc AX, 5;
			mov a, AX;
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
