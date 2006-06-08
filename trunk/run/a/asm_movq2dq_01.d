// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movq2dq_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		static ulong[2] X = [0x0011_2233_4455_6677_8899LU, 0x1234_5678_90AB_CDEF];
		ulong[2] y = X.dup;

		static ulong A = 0x1234_ABCD_5678_EF01;
		ulong a = A;

		asm{
			movdqu XMM0, X;
			movq MM0, a;
			movq2dq XMM0, MM0;
			movdqu y, XMM0;
		}

		if(a != A){
			assert(0);
		}

		if(y[0] != A){
			assert(0);
		}

		if(y[1] != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
