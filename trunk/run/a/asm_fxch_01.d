// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fxch_01;

int main(){
	version(D_InlineAsm){
		real a = -1.0f;
		real b = 3.5f;
		
		real a2, b2;
		
		asm{
			finit;
			fld a;
			fld b;
			fxch;
			fstp b2;
			fstp a2;
		}
		
		assert(a2==b);
		assert(b2==a);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}