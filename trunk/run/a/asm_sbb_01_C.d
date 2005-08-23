// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sbb_01_C;

int main(){
	version(D_InlineAsm){
		int a = 50000;
		int b = 30000;
				
		asm{
			clc;
			mov EAX, a;
			sbb EAX, b;
			mov a, EAX;
		}

		assert(a == 20000);

		a = 50000;
		b = 30000;
		
		asm{
			stc;
			mov EAX, a;
			sbb EAX, b;
			mov a, EAX;
		}
		
		assert(a == 19999);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}