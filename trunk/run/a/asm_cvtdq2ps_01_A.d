// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtdq2ps_01_A;

int main(){
	version(D_InlineAsm_X86){
		static int[4] A = [0, -1, 2, -3];
		float[4] b;

		asm{
			movdqu XMM0, A;
			cvtdq2ps XMM1, XMM0;
			movdqu b, XMM1;
		}

		if(b[0] != 0.0f){
			assert(0);
		}
		if(b[1] != -1.0f){
			assert(0);
		}
		if(b[2] != 2.0f){
			assert(0);
		}
		if(b[3] != -3.0f){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
