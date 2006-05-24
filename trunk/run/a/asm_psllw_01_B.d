// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_psllw_01_B;

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
		short[8] b;

		asm{
			movdqu XMM0, A;
			psllw XMM0, 1;
			movdqu b, XMM0;
		}

		if(b[0] != 2){
			assert(0);
		}
		if(b[1] != 8){
			assert(0);
		}
		if(b[2] != 4){
			assert(0);
		}
		if(b[3] != 16){
			assert(0);
		}
		if(b[4] != 10){
			assert(0);
		}
		if(b[5] != 6){
			assert(0);
		}
		if(b[6] != 14){
			assert(0);
		}
		if(b[7] != 18){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
