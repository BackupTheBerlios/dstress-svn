// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_haddpd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE3!()();

		static double[2] A = [7.0, 11.0];
		static double[2] B = [2.0, 3.0];
		double[2] c;

		asm{
			movupd XMM0, A;
			movupd XMM1, B;
			haddpd XMM0, XMM1;
			movupd c, XMM0;
		}

		c[0] -= 18.0;
		if(c[0] < 0){
			c[0] = -c[0];
		}
		if(c[0] > double.epsilon * 16){
			assert(0);
		}
		
		c[1] -= 5.0;
		if(c[1] < 0){
			c[1] = -c[1];
		}
		if(c[1] > double.epsilon * 16){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
