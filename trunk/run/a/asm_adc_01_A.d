// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_adc_01_A;

int main(){
	version(D_InlineAsm){
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
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}