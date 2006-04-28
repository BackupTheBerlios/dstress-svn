// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movhlpd_01_A;

int main(){
	version(D_InlineAsm_X86){
		static double[2] A = [1.0, 2.0];
		static double B = 4.0;
		double[2] b;

		asm{
			movdqu XMM0, A;
			movhpd XMM0, B;
			movdqu b, XMM0;
		}

		if(b[0] != A[0]){
			assert(0);
		}

		if(b[1] != B){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
