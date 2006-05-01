// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mulss_01_A;

int main(){
	version(D_InlineAsm_X86){
		const float[4] A = [7.0f, 4.0f, 1.0f, -2.0f];
		const float[4] B = [3.0f, 2.0f, 0.0f, 5.0f];
		float[4] c;
		
		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			mulss XMM0, XMM1;
			movdqu c, XMM0;
		}
		
		if(c[0] != 21.0f){
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
