// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcl_01_A;

int main(){
	version(D_InlineAsm){
		ubyte a = 0b1111_1100;
			
		asm{
			clc;
			rcl a, 1;
		}

		assert(a == 0b1111_1000);

		asm{
			stc;
			rcl a, 1;
		}
		
		assert(a == 0b1111_0001);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
