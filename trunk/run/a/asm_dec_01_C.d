// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_dec_01_C;

int main(){
	version(D_InlineAsm){
		uint i = 0x00_00_00_00u;
		
		assert(i==0x00_00_00_00u);
		
		asm{
			mov EAX, i;
			dec EAX;
			mov i, EAX;
		}
	
		assert(i==0xFF_FF_FF_FFu);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}