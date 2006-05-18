// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ldmxcsr_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveMMX!()();

		uint state = 0x0000_1F80;

		asm{
			ldmxcsr state;
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
