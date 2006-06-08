// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pxor_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		ulong a = 0xFF01_00FF_0001_0000;
		ulong b = 0xFF00_00FF_0002_0000;
		ulong c = 2;

		asm{
			movq MM0, a;
			pxor MM0, b;
			movq c, MM0;
		}

		if(c != 0x0001_0000_0003_0000){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
