// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_hsubpd_01_A;

int main(){
	version(D_InlineAsm_X86){
		static double[2] A = [2.0, 3.0];
		static double[2] B = [1.0, 4.0];
		double[2] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			hsubpd XMM0, XMM1;
			movdqu c, XMM0;
		}

		c[0] += 1.0;
		if(c[0] < 0){
			c[0] = -c[0];
		}
		if(c[0] > double.epsilon * 64){
			assert(0);
		}
		
		c[1] += 3.0;
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
