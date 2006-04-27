// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pextrw_01_A;

int main(){
	version(D_InlineAsm_X86){
		static ushort[8] x = [1, 2, 3, 4, 5, 0xFFFF, 7, 0];
		uint a;
		uint b;
		
		asm{
			movdqu XMM0, x;
			pextrw EAX, XMM0, 5;
			mov a, EAX;
			pextrw EDX, XMM0, 1;
			mov b, EDX;
		}

		if(a != 0xFFFF){
			assert(0);
		}
		if(b != 2){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
