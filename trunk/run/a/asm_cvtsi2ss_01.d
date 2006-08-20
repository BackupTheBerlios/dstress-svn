// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtsi2ss_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		int i = -23000;
		float f = 0.0f;

		asm{
			cvtsi2ss XMM0, i;
			movd f, XMM0;
		}

		if(f != -23000.0){
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
