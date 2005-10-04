// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fistp_01_B;

int main(){
	version(D_InlineAsm){
		real r = -800.9L;
		int i;
		
		asm{
			fld r;
			fisttp i;
		}
		
		assert(i==-800);
		
		r = -800.0L;
		
		asm{
			fld r;
			fisttp i;
		}
		
		assert(i==-800);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}