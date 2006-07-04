 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_comisd_01_A;

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
		a[1] = 3.0;
		
		double[] b = new double[2];
		b[0] = 4.0;
		b[1] = 3.0;

		asm{
			movupd XMM0, a;
			movupd XMM1, b;
			comisd XMM0, XMM1;
			jz error;
			jp error;
			jc error;
		}


		return 0;
	error:
		assert(0);
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
