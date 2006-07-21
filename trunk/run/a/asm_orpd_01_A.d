// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_orpd_01_A;

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
		a[0] = 4.0;
		a[1] = 8.0;

		double[] b = new double[2];
		b[0] = 3.0;
		b[1] = 4.0;

		double[] c = new double[2];

		asm{
			movupd XMM0, a;
			movupd XMM1, b;
			orpd XMM0, XMM1;
			movupd c, XMM0;
		}

		if(c[0] != 6.0){
			assert(0);
		}
		if(c[1] != 16.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
