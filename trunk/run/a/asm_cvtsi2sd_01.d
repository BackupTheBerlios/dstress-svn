// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtsi2sd_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		int i = -23000;
		double d = 0.0f;

		asm{
			cvtsi2sd XMM0, i;
			movq d, XMM0;
		}

		if(d != -23000.0){
			assert(0);
		}
		if(i != -23000){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
