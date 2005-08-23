// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_idiv_01_C;

int main(){
	version(D_InlineAsm){
		int y = -2;
		
		int a = 0x00_00_00_00;
		int b = - 0x0F_FF_FF_FF;
		
		asm{
			mov EDX, a;
			mov EAX, b;
			idiv y;
			mov a, EAX;
			mov b, EDX;
		}

		assert(a==0x88_00_00_00u);
		assert(b==1);
		
		a = 0x00_00_00_00;
		b = 0x0F_FF_FF_FE;

		asm{
			mov EDX, a;
			mov EAX, b;
			idiv y;
			mov a, EAX;
			mov b, EDX;
		}

		assert(a==0xF8_00_00_01u);
		assert(b==0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}