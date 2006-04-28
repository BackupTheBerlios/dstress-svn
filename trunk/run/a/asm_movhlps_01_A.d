// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movhlps_01_A;

int main(){
	version(D_InlineAsm_X86){
		static float[4] A = [1.0f, 2.0f, 3.0f , 4.0f];
		float[4] b;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, A;
			movhlps XMM1, XMM0;
			movdqu b, XMM0;
		}

		if((b[0] != b[2]) || (A[2] != b[0])){
			assert(0);
		}

		if((b[1] != b[3]) || (A[3] != b[1])){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
