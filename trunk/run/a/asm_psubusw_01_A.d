// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_psubusw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const ushort[8] A = [1, 2, 3, 4, 5, 6, 7, 16];
		const ushort[8] B = [0, 1, 2, 3, 4, 5, 6, 19];

		ushort[8] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			psubusw XMM0, XMM1;
			movdqu c, XMM0;
		}

		foreach(ushort x; c[0 .. c.length -1]){
			if(x != 1){
				assert(0);
			}
		}

		if(c[c.length - 1] != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
