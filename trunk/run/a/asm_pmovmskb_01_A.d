// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pmovmskb_01_A;


version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		ubyte Y = 0b1000_0000;
		ubyte N = 0b0111_1111;

		ubyte[] A = [Y, N, Y, Y, N, N, Y, Y, Y, N, N, N, Y, N, N, Y];
		ubyte* a = A.ptr;

		int b;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, 0x1234_5678;
				mov EAX, a;
				movdqu XMM0, [EAX];
				pmovmskb EAX, XMM0;
				mov b, EAX;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov EAX, 0x1234_5678;
				mov RAX, a;
				movdqu XMM0, [RAX];
				pmovmskb EAX, XMM0;
				mov b, EAX;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(b != 0b1001_0001_1100_1101){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: No inline ASM support");
	static assert(0);
}
