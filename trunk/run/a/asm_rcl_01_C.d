// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcl_01_C;

int main(){
	version(D_InlineAsm){
		uint a = 0b1111_1100__0000_0000__0111_1111__1111_1111;
			
		asm{
			clc;
			rcl a, 1;
		}

		assert(a == 0b1111_1000__0000_0000__1111_1111__1111_1110);
	
		asm{
			stc;
			rcl a, 1;
		}

		assert(a == 0b1111_0000__0000_0001__1111_1111__1111_1101);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
