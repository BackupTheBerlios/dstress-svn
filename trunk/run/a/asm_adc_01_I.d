// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_REQUIRE__ D_InlineAsm_X86

module dstress.run.a.asm_adc_01_I;

int main(){
	version(D_InlineAsm_X86){
		short a;
				
		asm{
			clc;
			mov BX, 3;
			adc BX, 5;
			mov a, BX;
		}

		if(a != 8){
			assert(0);
		}

		asm{
			stc;
			mov BX, 3;
			adc BX, 5;
			mov a, BX;
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
