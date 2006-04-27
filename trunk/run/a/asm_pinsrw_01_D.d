// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pinsrw_01_D;

int main(){
	version(D_InlineAsm_X86){
		static ushort[8] a = [1, 2, 3, 4, 5, 0xFFFF, 7, 0];
		ushort[8] b;

		ushort x = 0x34CD;
		ushort y = 0x0010;
		
		asm{
			movdqu XMM0, a;
			pinsrw XMM0, x, 0;
			pinsrw XMM0, y, 7;
			movdqu b, XMM0;
		}

		if(b[0] != 0x34CD){
			assert(0);
		}

		if(b[1] != 2){
			assert(0);
		}

		if(b[2] != 3){
			assert(0);
		}

		if(b[3] != 4){
			assert(0);
		}

		if(b[4] != 5){
			assert(0);
		}

		if(b[5] != 0xFFFF){
			assert(0);
		}

		if(b[6] != 7){
			assert(0);
		}

		if(b[7] != 0x0010){
			assert(0);
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
