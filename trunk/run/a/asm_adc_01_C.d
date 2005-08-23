// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_adc_01_C;

int main(){
	version(D_InlineAsm){
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
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}