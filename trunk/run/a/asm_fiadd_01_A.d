// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fiaddp_01_A;

int main(){
	version(D_InlineAsm){
		double a = -1.2L;
		int b = 34;
		
		asm{
			finit;
			fld a;
			fiadd b;
			fst a;
		}
		
		if(a <= 0){
			assert(0);
		}
		
		a -= 32.8L;
		
		a = (a>0) ? a : -a;
		
		if(a >= a.epsilon*16){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
