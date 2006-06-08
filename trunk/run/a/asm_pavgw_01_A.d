// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pavgw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		const short[8] A = [1, -2, 3, 4, 5, 6, 7, 8];
		const short[8] B = [5, 2, -1, -8, 15, 4, 1, 4];
		const short[8] C = [3, 0, 1, -2, 10, 5, 4, 6];
		byte[8] d;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			pavgw XMM0, XMM1;
			movdqu d, XMM0;
		}

		for(size_t i = 0; i < C.length; i++){
			if(d[i] != C[i]){
				assert(0);
			}
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
