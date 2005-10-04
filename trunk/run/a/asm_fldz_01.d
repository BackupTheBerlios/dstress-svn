// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fldz_01;

int main(){
	version(D_InlineAsm){
		real r = -800.9L;
		
		asm{
			fldz;
			fstp r;
		}
		
		assert(r==0.0L);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}