// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_paddq_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE2!()();

		static long[2] A = [-1, -2];
		static long[2] B = [2, long.max];
		long[2] c;
				
		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			paddq XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != 1){
			assert(0);
		}
		if(c[1] != long.max - 2){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
