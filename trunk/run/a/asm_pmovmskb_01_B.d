// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pmovmskb_01_B;

int main(){
	version(D_InlineAsm_X86){
		ulong a = 0x0888_7FFF_FFFF_0000;
		uint i;

		asm{
			movq MM0, a;
			mov EAX, 0xFF12_34BC;
			pmovmskb EAX, MM0;
			mov i, EAX;
		}

		if(i != 0b0101_1100){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
