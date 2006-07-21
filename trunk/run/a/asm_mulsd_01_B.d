// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mulsd_01_B;

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
		a[0] = 7.0;
		a[1] = 4.0;

		double b = 2.0;

		double[] c = new double[2];

		asm{
			movupd XMM0, a;
			mulsd XMM0, b;
			movupd c, XMM0;
		}

		if(c[0] != 14.0){
			assert(0);
		}
		if(c[1] != 4.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
