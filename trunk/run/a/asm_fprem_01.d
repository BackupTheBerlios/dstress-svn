// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fprem_01;

int main(){
	version(D_InlineAsm){
		real a = 3.0L;
		real b = 8.0L;
		
		asm{
			finit;
			fld a;
			fld b;
			fprem;
			fstp a;
		}
		
		a -= 2.0L;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}