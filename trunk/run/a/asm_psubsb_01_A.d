// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_psubsb_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const byte[16] A = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, byte.min];
		const byte[16] B = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, byte.max];

		byte[16] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			psubsb XMM0, XMM1;
			movdqu c, XMM0;
		}

		foreach(byte x; c[0 .. c.length -1]){
			if(x != 1){
				assert(0);
			}
		}

		if(c[c.length - 1] != byte.min){
			assert(0);
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
