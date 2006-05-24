// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_punpcklqdq_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const long[2] A = [2, 1];
		const long[2] B = [-2, -1];

		long[2] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			punpcklqdq XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != -1){
			assert(0);
		}
		if(c[1] != 1){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}

