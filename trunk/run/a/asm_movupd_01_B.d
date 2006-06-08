// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movupd_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const double[2] A = [1.0, 4.0];
		double[2] b;

		asm{
			movdqu XMM0, A;
			movupd XMM1, XMM0;
			movdqu b, XMM1;
		}

		if(b[0] != A[0]){
			assert(0);
		}
		if(b[1] != A[1]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
