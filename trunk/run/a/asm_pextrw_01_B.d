// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pextrw_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		ulong x = 0x0500_FFFF_0707_1234;
		uint a;
		uint b;

		asm{
			movq MM0, x;
			pextrw EAX, MM0, 2;
			mov a, EAX;
			pextrw EDX, MM0, 1;
			mov b, EDX;
		}

		if(a != 0xFFFF){
			assert(0);
		}
		if(b != 0x0707){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
