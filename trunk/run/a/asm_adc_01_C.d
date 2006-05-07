// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_adc_01_C;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		int a = 30000;
		int b = 50000;
				
		asm{
			clc;
			mov EAX, a;
			adc EAX, b;
			mov a, EAX;
		}

		assert(a == 80000);

		a = 30000;
		b = 50000;
		
		asm{
			stc;
			mov EAX, a;
			adc EAX, b;
			mov a, EAX;
		}
		
		assert(a == 80001);
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
		static assert(0);
	}
}
