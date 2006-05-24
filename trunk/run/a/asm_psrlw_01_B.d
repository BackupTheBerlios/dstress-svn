// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_psrlw_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const short[8] A = [1, -4, 2, 8, 5, 3, 7, 9];
		const long[2] B = [8, 1];
		ushort[8] c;

		asm{
			movdqu XMM0, A;
			psrlw XMM0, 1;
			movdqu c, XMM0;
		}

		if(c[0] != 0){
			assert(0);
		}
		if(c[1] != 0x7FFE){
			assert(0);
		}
		if(c[2] != 1){
			assert(0);
		}
		if(c[3] != 4){
			assert(0);
		}
		if(c[4] != 2){
			assert(0);
		}
		if(c[5] != 1){
			assert(0);
		}
		if(c[6] != 3){
			assert(0);
		}
		if(c[7] != 4){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
