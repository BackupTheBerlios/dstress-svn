// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sbb_01_A;

int main(){
	version(D_InlineAsm){
		byte a = 50;
		byte b = 30;
				
		asm{
			clc;
			mov AL, a;
			sbb AL, b;
			mov a, AL;
		}

		assert(a == 20);

		a = 50;
		b = 30;
		
		asm{
			stc;
			mov AL, a;
			sbb AL, b;
			mov a, AL;
		}
		
		assert(a == 19);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}