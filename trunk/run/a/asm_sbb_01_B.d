// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sbb_01_B;

int main(){
	version(D_InlineAsm){
		short a = 500;
		short b = 300;
				
		asm{
			clc;
			mov AX, a;
			sbb AX, b;
			mov a, AX;
		}

		assert(a == 200);

		a = 500;
		b = 300;
		
		asm{
			stc;
			mov AX, a;
			sbb AX, b;
			mov a, AX;
		}
		
		assert(a == 199);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}