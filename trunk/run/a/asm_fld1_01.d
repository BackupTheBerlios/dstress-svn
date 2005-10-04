// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fld1_01;

int main(){
	version(D_InlineAsm){
		real r = -800.9L;
		
		asm{
			fld1;
			fstp r;
		}
		
		assert(r==1.0L);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}