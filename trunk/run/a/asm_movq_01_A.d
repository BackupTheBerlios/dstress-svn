// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movq_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();
		
		ulong a = 0x1234_ABCD_5678_EF01;
		ulong b = 2;
		
		asm{
			movq MM0, a;
			movq b, MM0;
		}
		
		if(a != 0x1234_ABCD_5678_EF01){
			assert(0);
		}
		if(b != 0x1234_ABCD_5678_EF01){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
