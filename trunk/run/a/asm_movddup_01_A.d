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

		double[] a = new double[2];
		a[0] = 2.0;
		a[1] = 3.0;
		
		double[] b = new double[2];

		asm{
			movupd XMM0, a;
			movupd XMM1, a;
			movddup XMM1, XMM0;
			movupd b, XMM1;
			emms;
		}

		if(a[0] != b[0]){
			assert(0);
		}

		if(a[0] != b[1]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
