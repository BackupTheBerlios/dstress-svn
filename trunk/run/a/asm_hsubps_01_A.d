// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_hsubps_01_A;

int main(){
	version(D_InlineAsm_X86){
		static float[4] A = [2.0f, 3.0f, 6.0f, 8.0f];
		static float[4] B = [1.0f, 4.0f, 5.0f, 9.0f];
		float[4] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			hsubps XMM0, XMM1;
			movdqu c, XMM0;
		}

		c[0] += 1.0f;
		if(c[0] < 0){
			c[0] = -c[0];
		}
		if(c[0] > float.epsilon * 16){
			assert(0);
		}
		
		c[1] += 2.0f;
		if(c[1] < 0){
			c[1] = -c[1];
		}
		if(c[1] > float.epsilon * 16){
			assert(0);
		}
		
		c[2] += 3.0;
		if(c[2] < 0){
			c[2] = -c[2];
		}
		if(c[2] > float.epsilon * 16){
			assert(0);
		}

		c[3] += 4.0;
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