// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_psllw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const short[8] A = [1, 4, 2, 8, 5, 3, 7, 9];
		const long[2] B = [8, 1];
		short[8] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			psllw XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != 2){
			assert(0);
		}
		if(c[1] != 8){
			assert(0);
		}
		if(c[2] != 4){
			assert(0);
		}
		if(c[3] != 16){
			assert(0);
		}
		if(c[4] != 10){
			assert(0);
		}
		if(c[5] != 6){
			assert(0);
		}
		if(c[6] != 14){
			assert(0);
		}
		if(c[7] != 18){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
