// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_minsd_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		static double[2] A = [3.0, 4.0];
		double b = 2.0;
		double[2] c;

		asm{
			movupd XMM0, A;
			minsd XMM0, b;
			movupd c, XMM0;
		}

		if(c[0] != 2.0){
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
