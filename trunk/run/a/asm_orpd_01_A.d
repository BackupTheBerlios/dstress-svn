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

		static double[2] A = [4.0, 8.0];
		static double[2] B = [3.0, 4.0];
		double[2] c;

		asm{
			movupd XMM0, A;
			movupd XMM1, B;
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
