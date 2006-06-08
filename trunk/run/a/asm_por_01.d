// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_por_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveMMX!()();

		ulong a = 0xFF01_00FF_0001_0000;
		ulong b = 0xFF00_10FF_0002_0000;
		ulong c = 2;

		asm{
			movq MM0, a;
			por MM0, b;
			movq c, MM0;
		}

		if(c != 0xFF01_10FF_0003_0000){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
