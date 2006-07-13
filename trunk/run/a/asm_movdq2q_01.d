// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movdq2q_01;

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

		asm{
			movupd XMM0, a;
			movdq2q MM0, XMM0;
			movq b, MM0;
			emms;
		}

		if(b != a[1]){
			return 0;
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
