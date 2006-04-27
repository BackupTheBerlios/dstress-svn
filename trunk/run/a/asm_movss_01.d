// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movss_01;

int main(){
	version(D_InlineAsm_X86){
		
		float a = -12.1L;
		float b = 2.8L;
		
		asm{
			movss XMM0, a;
			movss b, XMM0;
		}
		
		if(a != b){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
