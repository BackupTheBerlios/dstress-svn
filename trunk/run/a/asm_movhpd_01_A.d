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

		double[] a = new double[2];
		a[0] = 1.0;
		a[1] = 2.0;
		
		double b = 4.0;
		double[] c = new double[2];

		asm{
			movupd XMM0, a;
			movhpd XMM0, b;
			movupd c, XMM0;
			emms;
		}

		if(c[0] != a[0]){
			assert(0);
		}

		if(c[1] != b){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
