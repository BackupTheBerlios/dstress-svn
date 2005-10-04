// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fprem1_01;

int main(){
	version(D_InlineAsm){
		real a = 3.0L;
		real b = 8.0L;
		
		asm{
			finit;
			fld a;
			fld b;
			fprem1;
			fstp a;
		}
		
		a += 1.0L;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}