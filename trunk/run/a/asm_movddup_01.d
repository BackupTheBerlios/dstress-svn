// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movdup_01;

int main(){
	version(D_InlineAsm_X86){
		double a = -3.5;
		double[2] b;
		
		asm{
			movddup XMM0, a;
			movdqu f, XMM0;
		}
		
		if(b[0] != a){
			assert(0);
		}

		if(b[1] != a){
			assert(0);
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
