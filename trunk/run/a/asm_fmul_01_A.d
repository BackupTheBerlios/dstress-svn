// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fmul_01_A;

int main(){
	version(D_InlineAsm){
		real a = 2.0L;
		double f = -3.0;
		
		asm{
			finit;
			fld a;
			fmul f;
			fst f;
		}
		
		f -= -6.0;
		
		f = (f>0) ? f : -f;
		
		assert(f < f.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}