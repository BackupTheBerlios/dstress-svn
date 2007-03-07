// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_adc_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short a = 300;
		short b = 500;

		asm{
			clc;
			mov AX, a;
			adc AX, b;
			mov a, AX;
		}

		if(a != 800){
			assert(0);
		}

		a = 300;
		b = 500;

		asm{
			stc;
			mov AX, a;
			adc AX, b;
			mov a, AX;
		}

		if(a != 801){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
