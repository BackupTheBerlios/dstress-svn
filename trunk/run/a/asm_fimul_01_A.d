// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fimul_01_A;

int main(){
	version(D_InlineAsm){
		real a = 2.0L;
		short b = -3;
		
		asm{
			finit;
			fld a;
			fimul b;
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