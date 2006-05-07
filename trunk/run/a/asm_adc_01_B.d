// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_adc_01_B;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		short a = 300;
		short b = 500;
				
		asm{
			clc;
			mov AX, a;
			adc AX, b;
			mov a, AX;
		}

		assert(a == 800);

		a = 300;
		b = 500;
		
		asm{
			stc;
			mov AX, a;
			adc AX, b;
			mov a, AX;
		}
		
		assert(a == 801);
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
		static assert(0);
	}
}
