// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_adc_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		byte a = 3;
		byte b = 5;
				
		asm{
			clc;
			mov AL, a;
			adc AL, b;
			mov a, AL;
		}

		assert(a == 8);

		a = 3;
		b = 5;
		
		asm{
			stc;
			mov AL, a;
			adc AL, b;
			mov a, AL;
		}
		
		assert(a == 9);
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
		static assert(0);
	}
}
