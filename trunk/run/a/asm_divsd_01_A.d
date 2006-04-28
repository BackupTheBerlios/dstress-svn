// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_divsd_01_A;

int main(){
	version(D_InlineAsm_X86){
		static double[2] A = [-16.0f, 12.0];
		static double[2] B = [2.0f, 3.0f];
		double[2] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			divsd XMM0, XMM1;
			movdqu c, XMM0;
		}

		c[0] += 8.0f;
		if(c[0] < 0){
			c[0] = -c[0];
		}
		if(c[0] > double.epsilon * 16){
			assert(0);
		}

		c[1] -= 12.0f;
		if(c[1] < 0){
			c[1] = -c[1];
		}
		if(c[1] > double.epsilon * 16){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
