// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtdq2pd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE2!()();

		int[] a = new int[4];
		a[0] = 0;
		a[1] = -1;
		a[2] = 2;
		a[3] = -3;

		double[] b = new double[2];

		asm{
			movdqu XMM0, a;
			cvtdq2pd XMM1, XMM0;
			movdqu b, XMM1;
		}

		if(b[0] != 0){
			assert(0);
		}
		if(b[1] != -1){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
