// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pslld_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const uint[4] A = [
			(1 << 31) | 1,
			(1 << 31) | (1 << 7),
			(1 << 31) | (1 << 15),
			(1 << 31) | (1 << 23)];

		uint[4] c;

		asm{
			movdqu XMM0, A;
			pslld XMM0, 1;
			movdqu c, XMM0;
		}

		if(c[0] != (1 << 2)){
			assert(0);
		}
		if(c[1] != (1 << 8)){
			assert(0);
		}
		if(c[2] != (1 << 15)){
			assert(0);
		}
		if(c[3] != (1 << 24)){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
