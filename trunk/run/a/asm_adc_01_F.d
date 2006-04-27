// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_REQUIRE__ D_InlineAsm_X86

module dstress.run.a.asm_adc_01_F;

int main(){
	version(D_InlineAsm_X86){
		int a;
				
		asm{
			clc;
			mov EAX, 3;
			adc EAX, 5;
			mov a, EAX;
		}

		if(a != 8){
			assert(0);
		}

		asm{
			stc;
			mov EAX, 3;
			adc EAX, 5;
			mov a, EAX;
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
