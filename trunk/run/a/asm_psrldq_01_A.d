// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_psrldq_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const ulong[2] A = [0x1234_5678_90AB_CDEF, 0x0102_0304_0506_0708];
		ulong[2] c;

		asm{
			movdqu XMM0, A;
			psrldq XMM0, 1;
			movdqu c, XMM0;
		}

		if(c[0] != 0x0012_3456_7890_ABCD){
			assert(0);
		}
		if(c[1] != 0x0001_0203_0405_0607){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
