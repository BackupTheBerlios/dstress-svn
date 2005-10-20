// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fild_01_C;

int main(){
	version(D_InlineAsm){
		long i = 800;
		real r;
		
		asm{
			finit;
			fild i;
			fstp r;
		}
		
		assert(r == 800.0L);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}