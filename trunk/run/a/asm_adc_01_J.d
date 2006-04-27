// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_REQUIRE__ D_InlineAsm_X86

module dstress.run.a.asm_adc_01_J;

int main(){
	version(D_InlineAsm_X86){
		int a;
				
		asm{
			clc;
			mov EBX, 3;
			adc EBX, 5;
			mov a, EBX;
		}

		if(a != 8){
			assert(0);
		}

		asm{
			stc;
			mov EBX, 3;
			adc EBX, 5;
			mov a, EBX;
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
