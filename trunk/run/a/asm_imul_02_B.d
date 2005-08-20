// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_imul_02_B;

int main(){
	version(D_InlineAsm){
		short a = -2;
		short b = 3;
		
		asm{
			mov AX, a;
			imul AX, b;
			mov b, AX;
		}

		assert(b==-6);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}