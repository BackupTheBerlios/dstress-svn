// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_01_C;

int main(){
	version(D_InlineAsm){
		uint i = 0x12_23_45_56u;
		uint s = 0x0u;
		
		assert(i==0x12_23_45_56u);
		assert(s==0x0u);
		
		asm{
			mov EAX, s;
			sub EAX, 1;
			mov i, EAX;
		}
	
		assert(i==0xFF_FF_FF_FFu);
		assert(s==0x0u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}