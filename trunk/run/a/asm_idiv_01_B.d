// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_idiv_01_B;

int main(){
	version(D_InlineAsm){
		short y = 2;
		
		short a = 0x00_00;
		short b = - 0x0F_FF;
		
		asm{
			mov DX, a;
			mov AX, b;
			idiv y;
			mov a, AX;
			mov b, DX;
		}

		assert(a==0x78_00);
		assert(b==1);
		
		a = 0x00_00;
		b = - 0x0F_FE;

		asm{
			mov DX, a;
			mov AX, b;
			idiv y;
			mov a, AX;
			mov b, DX;
		}

		assert(a==0x78_01);
		assert(b==0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}