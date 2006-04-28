// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_addpd_01_A;

int main(){
	version(D_InlineAsm_X86){
		static double[2] A = [1.123, 1234.5];
		static double[2] B = [0.0012, -2.4];
		double[2] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			addpd XMM0, XMM1;
			movdqu c, XMM0;
		}

		c[0] -= 1.1242;
		if(c[0] < 0.0){
			c[0] = -c[0];
		}

		if(c[0] > double.epsilon * 16){
			assert(0);
		}

		c[1] -= 1232.1;
		if(c[1] < 0.0){
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
