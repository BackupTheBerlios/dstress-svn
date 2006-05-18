// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movhpd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		static double[2] A = [1.0, 2.0];
		double B = 4.0;
		double[2] b;

		asm{
			movupd XMM0, A;
			movhpd XMM0, B;
			movupd b, XMM0;
		}

		if(b[0] != A[0]){
			assert(0);
		}

		if(b[1] != B){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
