// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movsd_01;

int main(){
	version(D_InlineAsm_X86){
		
		double a = -12.1L;
		double b = 2.8L;
		
		asm{
			movsd XMM0, a;
			movsd b, XMM0;
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
