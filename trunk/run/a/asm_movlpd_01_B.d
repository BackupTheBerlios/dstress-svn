// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movlpd_01_B;

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
		double b = 5.0;

		asm{
			movups XMM0, A;
			movlpd b, XMM0;
		}

		if(b != A[0]){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
