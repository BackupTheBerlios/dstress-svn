// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_haddps_01_A;

int main(){
	version(D_InlineAsm_X86){
		static float[4] A = [6.1f, 7.2f, 8.3f, 9.4f];
		static float[4] B = [1.0f, 2.0f, 3.0f, 4.0f];
		float[4] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			haddps XMM0, XMM1;
			movdqu c, XMM0;
		}

		c[0] -= 13.3f;
		if(c[0] < 0){
			c[0] = -c[0];
		}
		if(c[0] > float.epsilon * 16){
			assert(0);
		}
		
		c[1] -= 17.7;
		if(c[1] < 0){
			c[1] = -c[1];
		}
		if(c[1] > float.epsilon * 16){
			assert(0);
		}
		
		c[2] -= 3.0;
		if(c[2] < 0){
			c[2] = -c[2];
		}
		if(c[2] > float.epsilon * 16){
			assert(0);
		}

		c[3] -= 7.0;
		if(c[3] < 0){
			c[3] = -c[3];
		}
		if(c[3] > float.epsilon * 16){
			assert(0);
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
