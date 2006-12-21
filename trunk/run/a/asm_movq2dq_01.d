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

		ulong* x = (new ulong[2]).ptr;
		x[0] = 0x0011_2233_4455_6677_8899LU;
		x[1] = 0x1234_5678_90AB_CDEF;

		ulong a = 0x1234_ABCD_5678_EF01;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, x;
				movdqu XMM0, [EAX];
				movq MM0, a;
				movq2dq XMM0, MM0;
				mov EAX, x;
				movdqu [EAX], XMM0;
				emms;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, x;
				movdqu XMM0, [RAX];
				movq MM0, a;
				movq2dq XMM0, MM0;
				mov RAX, x;
				movdqu [RAX], XMM0;
				emms;
			}
		}else{
			static assert(0, "unhandled pointer size");
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
