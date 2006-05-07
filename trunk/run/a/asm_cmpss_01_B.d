// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpss_01_B;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		static float[4] A = [1.0f, 2.0f, 3.0f, 4.0f];
		static float B = 1.0f;
		uint[4] c;
		float[4] f;

		asm{
			movups XMM0, A;
			cmpss XMM0, B, 0;
			movdqu c, XMM0;
			movups f, XMM0;
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
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
