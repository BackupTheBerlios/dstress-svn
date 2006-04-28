// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movaps_01_A;

int main(){
	version(D_InlineAsm_X86){
		static float[4] A = [2.0f, 3.0f, 0.0f, 0.5f];
		float[4] b;

		asm{
			movdqu XMM0, A;
			movaps XMM1, XMM0;
			movdqu b, XMM1;
		}

		if(A[0] != b[0]){
			assert(0);
		}

		if(A[1] != b[1]){
			assert(0);
		}
		
		if(A[2] != b[2]){
			assert(0);
		}

		if(A[3] != b[3]){
			assert(0);
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
