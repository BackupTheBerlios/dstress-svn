// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movddup_01_A;

int main(){
	version(D_InlineAsm_X86){
		static double[2] A = [2.0, 3.0];
		double[2] b;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, A;
			movddup XMM1, XMM0;
			movdqu b, XMM1;
		}

		if(A[0] != b[0]){
			assert(0);
		}

		if(A[0] != b[1]){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
