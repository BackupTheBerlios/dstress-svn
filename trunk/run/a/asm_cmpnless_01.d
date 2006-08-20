// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpnless_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();
		
		float a = 1.2;
		float b = 1.2;
		uint res;

		asm{
			movd XMM0, a;
			cmpss XMM0, b, 6;
			movd res, XMM0;
		}

		if(res != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
