// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_stmxcsr_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveMMX!()();

		uint state;

		asm{
			stmxcsr state;
		}

		if((state & 0x0000_FFFF) != 0x0000_1F80){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
