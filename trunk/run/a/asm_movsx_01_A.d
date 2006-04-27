// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movsx_01_A;

int main(){
	version(D_InlineAsm_X86){
		int i = 0xFF_FF_FF_FFu;
		byte b = byte.min;
		
		asm{
			mov EAX, i;
			mov AL, b;
			movsx EAX, AL;
			mov i, EAX;
		}
	
		if(i != byte.min){
			assert(0);
		}
		
		i=0xFF_FF_FF_FFu;
		b=byte.max;
		
		asm{
			mov EAX, i;
			mov AL, b;
			movsx EAX, AL;
			mov i, EAX;
		}
		
		if(i != byte.max){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
