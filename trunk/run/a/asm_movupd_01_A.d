// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movupd_01_A;

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
		a[1] = 4.0;
		
		double[] b = new double[2];

		asm{
			movdqu XMM0, a;
			movupd b, XMM0;
		}

		if(b[0] != a[0]){
			assert(0);
		}
		if(b[1] != a[1]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
