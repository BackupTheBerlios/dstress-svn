// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_inc_01_C;

int main(){
	version(D_InlineAsm){
		uint i = 0xFF_FF_FF_FFu;
		
		assert(i==0xFF_FF_FF_FFu);
		
		asm{
			mov EAX, i;
			inc EAX;
			mov i, EAX;
		}
	
		assert(i==0x00_00_00_00u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}