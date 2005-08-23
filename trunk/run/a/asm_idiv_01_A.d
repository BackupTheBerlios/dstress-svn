// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_idiv_01_A;

int main(){
	version(D_InlineAsm){
		byte y = 2;
		
		byte a = 0x00;
		byte b = - 0x7F;
		
		asm{
			mov AH, a;
			mov AL, b;
			idiv y;
			mov a, AL;
			mov b, AH;
		}

		assert(a==0x40);
		assert(b==1);
		
		a = 0x00_00;
		b = - 0x7E;

		asm{
			mov AH, a;
			mov AL, b;
			idiv y;
			mov a, AL;
			mov b, AH;
		}
		
		assert(a==0x41);
		assert(b==0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}