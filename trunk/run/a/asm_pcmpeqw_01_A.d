// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pcmpeqw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		static short[8] A = [1, 2, 3, 4, 5, 6, 7, 8];
		static short[8] B = [1, 0, byte.min, -5, -4, -3, -2, 8];
		ushort[8] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			pcmpeqw XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != 0xFFFF){
			assert(0);
		}
		if(c[1] != 0){
			assert(0);
		}
		if(c[2] != 0){
			assert(0);
		}
		if(c[3] != 0){
			assert(0);
		}
		if(c[4] != 0){
			assert(0);
		}
		if(c[5] != 0){
			assert(0);
		}
		if(c[6] != 0){
			assert(0);
		}
		if(c[7] != 0xFFFF){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
