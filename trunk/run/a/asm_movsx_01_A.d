// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movsx_01_A;

int main(){
	version(D_InlineAsm){
		int i=0xFF_FF_FF_FFu;
		byte b=byte.min;
		
		assert(i==0xFF_FF_FF_FFu);
		
		asm{
			mov EAX, i;
			mov AL, b;
			movsx EAX, AL;
			mov i, EAX;
		}
	
		assert(i==byte.min);
		
		i=0xFF_FF_FF_FFu;
		b=byte.max;
		
		asm{
			mov EAX, i;
			mov AL, b;
			movsx EAX, AL;
			mov i, EAX;
		}
		
		assert(i==byte.max);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}