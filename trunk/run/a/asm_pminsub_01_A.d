// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pminub_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		static ubyte[16] A = [15, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
		static ubyte[16] B = [1, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 17];
		ubyte[16] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			pminub XMM0, XMM1;
			movdqu c, XMM0;
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
		if(c[4] != 5){
			assert(0);
		}
		if(c[5] != 6){
			assert(0);
		}
		if(c[6] != 7){
			assert(0);
		}
		if(c[7] != 8){
			assert(0);
		}
		if(c[8] != 7){
			assert(0);
		}
		if(c[9] != 6){
			assert(0);
		}
		if(c[10] != 5){
			assert(0);
		}
		if(c[11] != 4){
			assert(0);
		}
		if(c[12] != 3){
			assert(0);
		}
		if(c[13] != 2){
			assert(0);
		}
		if(c[14] != 1){
			assert(0);
		}
		if(c[15] != 16){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
