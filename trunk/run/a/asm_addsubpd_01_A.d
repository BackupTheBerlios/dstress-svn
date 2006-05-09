// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_addsubpd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		static double[2] A = [1.0, 30.0];
		static double[2] B = [4.0, 10.0];
		double[2] c;

		asm{
			movupd XMM0, A;
			movupd XMM1, B;
			addsubpd XMM0, XMM1;
			movupd c, XMM0;
		}

		c[0] += 3.0;
		if(c[0] < 0.0){
			c[0] = -c[0];
		}

		if(c[0] > double.epsilon * 16){
			assert(0);
		}

		c[1] -= 40.0;
		if(c[1] < 0.0){
			c[1] = -c[1];
		}

		if(c[1] > double.epsilon * 16){
			assert(0);
		}
		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
