// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_addss_01_A;

int main(){
	version(D_InlineAsm_X86){
		static float[4] A = [1.0f, 20.0f, 0.4f, 2.0f];
		static float[4] B = [4.0f, 10.0f, -4.0f, -0.4f];
		float[4] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			addss XMM0, XMM1;
			movdqu c, XMM0;
		}

		c[0] -= 5.0f;
		if(c[0] < 0.0){
			c[0] = -c[0];
		}

		if(c[0] > float.epsilon * 16){
			assert(0);
		}

		c[1] -= 20.0f;
		if(c[1] < 0.0){
			c[1] = -c[1];
		}

		if(c[1] > float.epsilon * 16){
			assert(0);
		}

		c[2] -= 0.4f;
		if(c[2] < 0.0){
			c[2] = -c[2];
		}

		if(c[2] > float.epsilon * 16){
			assert(0);
		}

		c[3] -= 2.0f;
		if(c[3] < 0.0){
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
