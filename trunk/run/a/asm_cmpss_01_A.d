// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpss_01_A;

int main(){
	version(D_InlineAsm_X86){
		static float[4] A = [1.0f, 2.0f, 3.0f, 4.0];
		uint[4] c;
		float[4] f;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, A;
			cmpss XMM0, XMM1, 0;
			movdqu c, XMM0;
			movdqu f, XMM0;
		}

		if(c[0] != uint.max){
			assert(0);
		}
		if(f[1] != A[1]){
			assert(0);
		}
		if(f[2] != A[2]){
			assert(0);
		}
		if(f[3] != A[3]){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
