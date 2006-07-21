// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movddup_01_B;

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
		double c = 1.0;

		asm{
			movupd XMM0, a;
			movddup XMM0, c;
			movupd b, XMM0;
		}

		if(b[0] != 1.0){
			assert(0);
		}

		if(b[1] != 1.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
