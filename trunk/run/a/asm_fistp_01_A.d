// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fistp_01_A;

int main(){
	version(D_InlineAsm){
		real r = 800.0L;
		short a, b;
		
		asm{
			fld1;
			fld r;
			fistp a;
			fistp b;
		}
		
		assert(a==800);
		assert(b==1);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}