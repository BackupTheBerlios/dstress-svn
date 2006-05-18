// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movddup_01_A;

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

		asm{
			movupd XMM0, A;
			movupd XMM1, A;
			movddup XMM1, XMM0;
			movupd b, XMM1;
		}

		if(A[0] != b[0]){
			assert(0);
		}

		if(A[0] != b[1]){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
