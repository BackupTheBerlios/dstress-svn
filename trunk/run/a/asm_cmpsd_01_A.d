// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpsd_01_A;

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
		static double[2] B = [1.0, 2.0];
		ulong[2] c;
		double[2] d;

		asm{
			movupd XMM0, A;
			movupd XMM1, B;
			cmpsd XMM0, XMM1, 0;
			movdqu c, XMM0;
			movupd d, XMM0;
		}

		if(c[0] != ulong.max){
			assert(0);
		}
		if(d[1] != A[1]){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
