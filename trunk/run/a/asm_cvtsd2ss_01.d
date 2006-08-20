// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtsd2ss_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		double d = 64.0f;
		float f = 0.0;

		asm{
			cvtsd2ss XMM0, d;
			movd f, XMM0;
		}

		if(d != 64.0f){
			assert(0);
		}
		if(f != 64.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
