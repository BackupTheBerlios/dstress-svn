// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pmovmskb_01_A;

int main(){
	version(D_InlineAsm_X86){
		static ushort[8] a = [0x8000, 0x0800, 0x0080, 0x0008, 0x0888, 0x7FFF, 0xFFFF, 0];
		uint i;
		
		asm{
			movdqu XMM0, a;
			mov EAX, 0xFF12_34BC;
			pmovmskb EAX, XMM0;
			mov i, EAX;
		}

		if(i != 0b0011_0101_0001_0010){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
