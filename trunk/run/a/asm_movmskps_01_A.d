// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movmskps_01_A;

int main(){
	version(D_InlineAsm_X86){
		const float[4] a = [1.0, -1.0, +0.0, -0.0];
		uint b;
		
		asm{
			movdqu XMM0, a;
			mov EAX, 0xFFFF_FFFF;
			movmskps EAX, XMM0;
			mov b, EAX;
		}
		
		if(b != 0xFFFF_FF06){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
