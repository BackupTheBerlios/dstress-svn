// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_psadbw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		const ubyte[16] A = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
		const ubyte[16] B = [2, 2, 2, 2, 2, 2, 2, 2, 1, 10, 10, 10, 10, 10, 10, 10];

		ushort[8] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			psadbw XMM0, XMM1;
			movdqu c, XMM0;
		}
	
		if(c[0] != 0){
			assert(0);
		}
		if(c[1] != 0){
			assert(0);
		}
		if(c[2] != 0){
			assert(0);
		}
		if(c[3] != 22){
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
		if(c[7] != 21){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
