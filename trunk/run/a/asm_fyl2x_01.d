// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fyl2x_01;

int main(){
	version(D_InlineAsm){
		real a = -2.0L;
		
		asm{
			finit;
			fld a;
			fld1;
			fyl2x;
			fstp a;
			fstp a;
		}
		
		assert(a == -0.0L);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}