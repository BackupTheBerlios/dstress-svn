// $HeadURL$
// $Date$
// $Author$

module dsterss.run.a.asm_pmaxsw_01_A;


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
			pmaxsw XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != 1){
			assert(0);
		}
		if(c[1] != 10){
			assert(0);
		}
		if(c[2] != 3){
			assert(0);
		}
		if(c[3] != 4){
			assert(0);
		}
		if(c[4] != 13){
			assert(0);
		}
		if(c[5] != 14){
			assert(0);
		}
		if(c[6] != 0xFFF){
			assert(0);
		}
		if(c[7] != 2){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
