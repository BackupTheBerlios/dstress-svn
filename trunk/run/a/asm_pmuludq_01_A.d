// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pmuludq_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const uint[4] A = [1, 0x1234_5678, 0xFEDC_A987, 3];
		const uint[4] B = [0xFFFF_FFFF, 0xABCD, 13, 88];

		ulong[2] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			pmuludq XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != 0x0000_0C37__89AB_6618){
			assert(0);
		}
		if(c[1] != 0x0000_0000__0000_0108){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
