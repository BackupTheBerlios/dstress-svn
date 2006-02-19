// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcl_01_B;

int main(){
	version(D_InlineAsm){
		ushort a = 0b1111_1100_0000_1010;
			
		asm{
			clc;
			rcl a, 1;
		}

		assert(a == 0b1111_1000_0001_0100);

		asm{
			stc;
			rcl a, 1;
		}

		assert(a == 0b1111_0000_0010_1001);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
