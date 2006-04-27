// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pxor_02_B;

int main(){
	version(D_InlineAsm_X86){
		static ushort[8] A = [0x1200, 0x0120, 0x0012, 0x2001, 0x0008, 0xFFFF, 0x0000, 0x1111];
		static ushort[8] B = [0x2100, 0x2100, 0x2100, 0x2100, 0x2100, 0x0F00, 0x0102, 0x2222];
		static ushort[8] C = [0x3300, 0x2020, 0x2112, 0x0101, 0x2108, 0xF0FF, 0x0102, 0x3333];

		ushort[8] a;
		
		asm{
			movdqu XMM0, A;
			por XMM0, B;
			movdqu a, XMM0;
		}


		foreach(size_t i, ushort s; C){
			if(s != a[i]){
				assert(0);
			}
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
