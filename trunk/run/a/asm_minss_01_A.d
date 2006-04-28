// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_maxss_01_A;

int main(){
	version(D_InlineAsm_X86){
		static float[4] A = [2.0f, 3.0f, 17.0f, -1.0f];
		static float[4] B = [1.0f, 4.0f, 16.0f, 1.0f];
		float[4] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			minss XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != 1.0f){
			assert(0);
		}

		if(c[1] != 3.0f){
			assert(0);
		}
		
		if(c[2] != 17.0f){
			assert(0);
		}

		if(c[3] != -1.0f){
			assert(0);
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
