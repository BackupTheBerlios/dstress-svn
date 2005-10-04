// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fist_01_A;

int main(){
	version(D_InlineAsm){
		real r = 800.0L;
		short i;
		
		asm{
			fld r;
			fist i;
		}
		
		assert(i==800);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}