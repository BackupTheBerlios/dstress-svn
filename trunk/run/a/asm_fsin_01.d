// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fsin_01;

int main(){
	version(D_InlineAsm){
		real a = 2.2L;
		
		asm{
			finit;
			fldpi;
			fsin;
			fstp a;
		}
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}