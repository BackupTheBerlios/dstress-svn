// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movss_01_B;

int main(){
	version(D_InlineAsm_X86){
		const float[4] A = [1.0, 2.0, 3.0, 4.0];
		const float[4] B = [5.0, 6.0, 7.0, 9.0];
		float[4] c;
		
		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			movss XMM0, XMM1;
			movdqu c, XMM0;
		}
		
		if(c[0] != B[0]){
			assert(0);
		}
		if(c[1] != A[1]){
			assert(0);
		}
		if(c[2] != A[2]){
			assert(0);
		}
		if(c[3] != A[3]){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
