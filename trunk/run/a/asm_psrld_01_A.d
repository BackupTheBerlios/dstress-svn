// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_psrld_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const uint[4] A = [
			(1 << 31) | 1,
			(1 << 31) | (1 << 8),
			(1 << 31) | (1 << 16),
			(1 << 31) | (1 << 23)];

		const long[2] B = [0x8FFF_FFFF_FFFF_FFFF, 1];
		uint[4] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			psrld XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != (1 << 30)){
			assert(0);
		}
		if(c[1] != ((1 << 30) | (1 << 7))){
			assert(0);
		}
		if(c[2] != ((1 << 30) | (1 << 15))){
			assert(0);
		}
		if(c[3] != ((1 << 30) | (1 << 22))){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
