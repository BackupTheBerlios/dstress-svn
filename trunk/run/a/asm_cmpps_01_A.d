// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpps_01_A;

int main(){
	version(D_InlineAsm_X86){
		static float[4] A = [1.0f, 2.0f, 3.0f, 4.0f];
		static float[4] B = [1.1f, 1.9f, 3.0f, 4.1f];
		uint[4] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			cmpps XMM0, XMM1, 0;
			movdqu c, XMM0;
		}

		if(c[0]){
			assert(0);
		}
		if(c[1]){
			assert(0);
		}
		if(c[2] != uint.max){
			assert(0);
		}
		if(c[3]){
			assert(0);
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
