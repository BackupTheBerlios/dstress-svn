// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_addsd_01_A;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		static double[2] A = [1.0, 20.0];
		static double[2] B = [4.0, 10.0];
		double[2] c;

		asm{
			movupd XMM0, A;
			movupd XMM1, B;
			addsd XMM0, XMM1;
			movupd c, XMM0;
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
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
