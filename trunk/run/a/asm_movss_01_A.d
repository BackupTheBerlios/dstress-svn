// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movss_01_A;

int main(){
	version(D_InlineAsm_X86){
		const float[4] A = [1.0, 2.0, 3.0, 4.0];
		const float B = 9.0;
		float[4] c;
		
		asm{
			movdqu XMM0, A;
			movss XMM0, B;
			movdqu c, XMM0;
		}
		
		if(c[0] != B){
			assert(0);
		}
		if(c[1] != 0.0){
			assert(0);
		}
		if(c[2] != 0.0){
			assert(0);
		}
		if(c[3] != 0.0){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
