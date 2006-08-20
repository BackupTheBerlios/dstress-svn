// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtss2sd_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();
		
		float f = -19.0f;
		double d = 0.0f;

		asm{
			cvtss2sd XMM0, f;
			movq d, XMM0;
		}

		if(d != -19.0){
			assert(0);
		}
		if(f != -19.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
