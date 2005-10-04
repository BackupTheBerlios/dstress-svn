// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_frndint_01;

int main(){
	version(D_InlineAsm){
		real a = 4.6L;
		
		asm{
			finit;
			fld a;
			frndint;
			fstp a;
		}
				
		a -= 5.0L;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}