// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movd_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveMMX!()();

		uint a = 0x1234_ABCD;
		int b = 2;

		asm{
			movd MM0, a;
			movd b, MM0;
		}

		if(a != b){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
