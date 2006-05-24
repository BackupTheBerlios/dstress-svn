// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_punpckhwd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const short[8] A = [0, 1, 2, 3, 4, 5, 6, 7];
		const short[8] B = [0, -1, -2, -3, -4, -5, -6, -7];

		short[8] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			punpckhwd XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != 0){
			assert(0);
		}
		if(c[1] != 0){
			assert(0);
		}
		if(c[2] != -1){
			assert(0);
		}
		if(c[3] != 1){
			assert(0);
		}
		if(c[4] != -2){
			assert(0);
		}
		if(c[5] != 2){
			assert(0);
		}
		if(c[6] != -3){
			assert(0);
		}
		if(c[7] != 3){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}

