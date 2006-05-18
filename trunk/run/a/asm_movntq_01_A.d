// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movlps_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveMMX!()();

		ulong a = 0x1234_5678_9ABC_DEF0_UL;
		ulong b;

		asm{
			movq MM0, a;
			movntq b, MM0;
		}

		if(a != 0x1234_5678_9ABC_DEF0_UL){
			assert(0);
		}
		if(b != 0x1234_5678_9ABC_DEF0_UL){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
