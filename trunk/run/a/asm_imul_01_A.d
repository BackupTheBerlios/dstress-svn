// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_imul_01_A;

int main(){
	version(D_InlineAsm){
		byte a = -2;
		byte b = 3;
		
		asm{
			mov AL, a;
			imul b;
			mov b, AL;
		}
	
		assert(b==-6);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}