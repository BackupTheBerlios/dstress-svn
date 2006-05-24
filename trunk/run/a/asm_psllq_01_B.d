// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_psllq_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const ulong[2] A = [(1 << 63) | 3, (1 << 63) | 5];
		ulong[2] b;

		asm{
			movdqu XMM0, A;
			psllq XMM0, 1;
			movdqu b, XMM0;
		}

		if(b[0] != 6){
			assert(0);
		}
		if(b[1] != 10){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
