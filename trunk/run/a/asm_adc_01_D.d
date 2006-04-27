// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_REQUIRE__ D_InlineAsm_X86

module dstress.run.a.asm_adc_01_D;

int main(){
	version(D_InlineAsm_X86){
		byte a;
				
		asm{
			clc;
			mov AL, 3;
			adc AL, 5;
			mov a, AL;
		}

		if(a != 8){
			assert(0);
		}

		asm{
			stc;
			mov AL, 3;
			adc AL, 5;
			mov a, AL;
		}
		
		if(a != 9){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
