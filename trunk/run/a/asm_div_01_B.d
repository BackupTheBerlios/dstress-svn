// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_div_01_B;

int main(){
	version(D_InlineAsm){
		ushort y = 2;
		
		ushort a = 0x00_00u;
		ushort b = 0xFF_FFu;
		
		asm{
			mov DX, a;
			mov AX, b;
			div y;
			mov a, AX;
			mov b, DX;
		}

		assert(a==0x7F_FFu);
		assert(b==0x1u);
		
		a = 0x00_00u;
		b = 0xFF_FEu;

		asm{
			mov DX, a;
			mov AX, b;
			div y;
			mov a, AX;
			mov b, DX;
		}

		assert(a==0x7F_FFu);
		assert(b==0x0u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
