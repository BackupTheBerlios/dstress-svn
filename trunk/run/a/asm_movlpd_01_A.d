// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movlpd_01_A;

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
		a[0] = 3.0;
		a[1] = 4.0;

		double b = 5.0;

		double[] c = new double[2];

		asm{
			movups XMM0, a;
			movlpd XMM0, b;
			movups c, XMM0;
		}

		if(c[0] != b){
			assert(0);
		}

		if(c[1] != a[1]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
