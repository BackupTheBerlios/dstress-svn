// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pshuflw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const short[8] A = [9, 9, 9, 9, 9, 9, 9, 9];
		const short[8] B = [1, 2, 3, 4, 5, 6, 7, 8];

		short[8] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			pushflw XMM0, XMM1, 0b11_10_01_00;
			movdqu, XMM0;
		}

		if(c[0] != 1){
			assert(0);
		}
		if(c[1] != 2){
			assert(0);
		}
		if(c[2] != 3){
			assert(0);
		}
		if(c[3] != 4){
			assert(0);
		}
		if(c[4] != 8){
			assert(0);
		}
		if(c[5] != 7){
			assert(0);
		}
		if(c[6] != 6){
			assert(0);
		}
		if(c[7] != 5){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
