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

		ulong[] x = new ulong[2];
		x[0] = 0x0011_2233_4455_6677_8899LU;
		x[1] = 0x1234_5678_90AB_CDEF;

		ulong a = 0x1234_ABCD_5678_EF01;

		asm{
			movdqu XMM0, x;
			movq MM0, a;
			movq2dq XMM0, MM0;
			movdqu x, XMM0;
			emms;
		}

		if(a != 0x1234_ABCD_5678_EF01){
			assert(0);
		}

		if(x[0] != 0x1234_ABCD_5678_EF01){
			assert(0);
		}

		if(x[1] != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
