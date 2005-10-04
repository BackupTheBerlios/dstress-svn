// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fxtract_01;

int main(){
	version(D_InlineAsm){
		real a = -8.0f;
		
		double exponent, significand;
		
		asm{
			finit;
			fld a;
			fxtract;
			fstp significand;
			fstp exponent;
		}
		
		assert(significand == -1.0f);
		assert(exponent == 3.0f);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}