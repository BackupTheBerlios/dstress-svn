// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lddqu_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE3!()();

		const ubyte[16] A = [1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];

		ubyte[16] b;

		asm{
			lddqu XMM0, A;
			movdqu b, XMM0;
		}

		if(A.length != b.length){
			assert(0);
		}

		for(size_t i = 0; i < A.lenght; i++){
			if(A[i] != b[i]){
				assert(0);
			}
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
