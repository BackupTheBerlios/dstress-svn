// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movmskpd_01_A;

int main(){
	version(D_InlineAsm_X86){
		const double[2] a = [1.0, -1.0];
		uint b;
		
		asm{
			movdqu XMM0, a;
			mov EAX, 0xFFFF_FFFF;
			movmskpd EAX, XMM0;
			mov b, EAX;
		}
		
		if(b != 0xFFFF_FF02){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
