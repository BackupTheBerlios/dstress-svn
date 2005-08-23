// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmc_01;

int main(){
	version(D_InlineAsm){
		byte a = 0;
				
		asm{
			clc;
			cmc;
			mov AL, 0;
			adc AL, 0;
			mov a, AL;
		}

		assert(a == 1);
		
		asm{
			stc;
			cmc;
			mov AL, 0;
			adc AL, 0;
			mov a, AL;
		}
		
		assert(a == 0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}