// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movsd_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		double[] a = new double[2];
		a[0] = 1.0;
		a[1] = 2.0;

		double b = 3.0;
		double[] c = new double[2];

		asm{
			movupd XMM0, A;
			movsd XMM0, b;
			movupd c, XMM0;
		}

		if(c[0] != b){
			assert(0);
		}
		if(c[1] != 0.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
