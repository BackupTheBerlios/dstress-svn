// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movzx_01_A;

int main(){
	version(D_InlineAsm_X86){
		uint i = 0xFF_FF_FF_FFu;
		ubyte b = 0xFF;
		
		assert(i==0xFF_FF_FF_FFu);
		assert(b==0xFF);
		
		asm{
			mov EAX, i;
			mov AL, b;
			movzx AX, AL;
			mov i, EAX;
		}
	
		if(i != 0xFF_FF_00_FFu){
			assert(0);
		}
		if(b != 0xFF){
			assert(0);
		}
		
		i=0xFF_FF_FF_FFu;
		b=0x12;
		
		asm{
			mov EAX, i;
			mov AL, b;
			movzx AX, AL;
			mov i, EAX;
		}
		
		if(i != 0xFF_FF_00_12u){
			assert(0);
		}
		if(b != 0x12){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
