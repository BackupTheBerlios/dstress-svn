// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movmskps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		float* a = (new float[4]).ptr;
		a[0] = 1.0f;
		a[1] = -1.0f;
		a[2] = -float.infinity;
		a[3] = -0.0f;

		uint b;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, 0x1234_5678;
				movmskps EAX, XMM0;
				mov b, EAX;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, 0x1234_5678;
				movmskps RAX, XMM0;
				mov b, RAX;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(b != 0b1110){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
