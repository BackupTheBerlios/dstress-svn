// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movupd_01_C;

int main(){
	version(D_InlineAsm_X86){
		const double[2] A = [1.0, 4.0];
		double[2] b;
		
		asm{
			movupd XMM0, A;
			movdqu b, XMM0;
		}
		
		if(b[0] != A[0]){
			assert(0);
		}
		if(b[1] != A[1]){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
