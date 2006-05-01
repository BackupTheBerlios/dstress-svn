// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_addsd_01_A;

int main(){
	version(D_InlineAsm_X86){
		static double[2] A = [1.0, 20.0];
		static double[2] B = [4.0, 10.0];
		double[2] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			addsd XMM0, XMM1;
			movdqu c, XMM0;
		}

		c[0] -= 5.0;
		if(c[0] < 0.0){
			c[0] = -c[0];
		}

		if(c[0] > double.epsilon * 16){
			assert(0);
		}

		c[1] -= 20.0;
		if(c[1] < 0.0){
			c[1] = -c[1];
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}