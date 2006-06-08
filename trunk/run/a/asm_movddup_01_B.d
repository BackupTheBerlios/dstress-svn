// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movddup_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE3!()();

		static double[2] A = [2.0, 3.0];
		double[2] b;
		double c = 1.0;

		asm{
			movupd XMM0, A;
			movddup XMM0, c;
			movupd b, XMM0;
		}

		if(b[0] != 1.0){
			assert(0);
		}

		if(b[1] != 1.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
