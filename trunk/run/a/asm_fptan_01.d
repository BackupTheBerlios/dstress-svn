// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fptan_01;

int main(){
	version(D_InlineAsm){
		double a = 4.0L;
		double b;
		
		asm{
			finit;
			fld a;
			fptan;
			fstp b;
			fstp a;
		}
		
		assert(b == 1.0L);
		
		a -= 1.1578212823495774852L;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}