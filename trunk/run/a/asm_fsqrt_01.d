// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fsqrt_01;

int main(){
	version(D_InlineAsm){
		real a = 9.0L;
		
		asm{
			finit;
			fld a;
			fsqrt;
			fstp a;
		}
		
		a -= 3.0L;
		a = (a>0) ? a : -a;
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}