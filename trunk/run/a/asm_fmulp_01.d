// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fmulp_01;

int main(){
	version(D_InlineAsm){
		real a = 2.0L;
		real b = -3.0;
		
		asm{
			finit;
			fld a;
			fld b;
			fmulp;
			fstp a;
		}
		
		a -= -6.0;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}