// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fpatan_01;

int main(){
	version(D_InlineAsm){
		real a = 2.2L;
		real b = -0.0L;
		
		asm{
			finit;
			fld a;
			fld b;
			fpatan;
			fstp a;
			fldpi;
			fstp b;
		}
		
		a -= b/2;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}