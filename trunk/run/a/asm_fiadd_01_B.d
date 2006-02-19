// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fiaddp_01_B;

int main(){
	version(D_InlineAsm){
		double a = -1.2L;
		short b = 34;
		
		asm{
			finit;
			fld a;
			fiadd b;
			fst a;
		}
		
		assert(a > 0);
		
		a -= 32.8l;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon*16);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}