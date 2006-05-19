// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mulsd_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const double[2] A = [7.0, 4.0];
		const double B = 2.0;
		double[2] c;
		
		asm{
			movupd XMM0, A;
			mulsd XMM0, B;
			movupd c, XMM0;
		}
		
		if(c[0] != 7.0){
			assert(0);
		}
		if(c[1] != 8.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
