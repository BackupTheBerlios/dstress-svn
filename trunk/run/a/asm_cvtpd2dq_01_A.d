// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtpd2dq_01_A;

int main(){
	version(D_InlineAsm_X86){
		static double[2] A = [-2.0, 4.0];
		int[4] b;

		asm{
			movdqu XMM0, A;
			cvtpd2dq XMM1, XMM0;
			movdqu b, XMM1;
		}

		if(b[0] != -2){
			assert(0);
		}
		if(b[1] != 4){
			assert(0);
		}
		if(b[2] != 0){
			assert(0);
		}
		if(b[3] != 0){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
