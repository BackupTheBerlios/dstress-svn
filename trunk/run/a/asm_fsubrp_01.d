// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fsubrp_01;

int main(){
	version(D_InlineAsm){
		double a = 2.4L;
		double b = -1.2L;
		
		asm{
			fld a;
			fld b;
			fsubrp;
			fst a;
		}
		
		assert(a<0);
		
		a += 3.6L;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}