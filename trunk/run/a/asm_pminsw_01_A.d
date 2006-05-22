// $HeadURL$
// $Date$
// $Author$

module dsterss.run.a.asm_pminsw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();
		
		const short[8] A = [1, 2, 3, 4, 5, 6, 16, 2];
		const short[8] B = [-9, 10, -11, -12, 13, 14, 0xFFF, 1];

		short[8] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			pminsw XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != -9){
			assert(0);
		}
		if(c[1] != 2){
			assert(0);
		}
		if(c[2] != -11){
			assert(0);
		}
		if(c[3] != -12){
			assert(0);
		}
		if(c[4] != 5){
			assert(0);
		}
		if(c[5] != 6){
			assert(0);
		}
		if(c[6] != 16){
			assert(0);
		}
		if(c[7] != 1){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
