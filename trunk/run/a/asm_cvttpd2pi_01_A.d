// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvttpd2pi_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();
		haveMMX!()();

		double[] a = new double[2];
		a[0] = -2.0;
		a[1] = 4.0;

		int[] b = new int[2];

		asm{
			movupd XMM0, a;
			cvttpd2pi MM0, XMM0;
			movq b, MM0;
			emms;
		}

		if(b[0] != -2){
			assert(0);
		}
		if(b[1] != 4){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
