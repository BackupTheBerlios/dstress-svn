// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fscale_01;

int main(){
	version(D_InlineAsm){
		real a = 4.6L;
		real b = 1;
		
		asm{
			finit;
			fld a;
			fld b;
			fscale;
			fstp a;
		}
			
		a -= 16.0L;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}