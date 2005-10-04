// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fsincos_01;

int main(){
	version(D_InlineAsm){
		real a = 2.2L;
		real b = 2.2L;
		
		asm{
			finit;
			fldz;
			fsincos;
			fstp a;
			fstp b;
		}
		
		a -= 1.0L;
		a = (a>0) ? a : -a;
		assert(a < a.epsilon * 4);
		
		assert(b == 0.0L);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}