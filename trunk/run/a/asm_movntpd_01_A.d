// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movntpd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE2!()();

		const double[2] a = [1.0, -1.0];
		double[] b = aligned_new!(double)(2, 16);
		
		asm{
			movupd XMM0, a;
			movntpd b, XMM0;
			sfence;
		}
		
		printf("%lf\n", b[0], b[1]);
		if(a[0] != b[0]){
			assert(0);
		}
		if(a[1] != b[1]){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
