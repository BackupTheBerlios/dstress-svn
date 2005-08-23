// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_adc_01_B;

int main(){
	version(D_InlineAsm){
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
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}