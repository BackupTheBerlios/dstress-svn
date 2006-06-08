// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pinsrw_01_A;

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
		ulong y;
		uint a = 0x1234_5678;

		asm{
			movq MM0, x;
			mov EAX, a;
			pinsrw MM0, EAX, 0;
			movq y, MM0;
		}

		if(y != 0x0500_FFFF_0707_5678){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
