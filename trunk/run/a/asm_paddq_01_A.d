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

		long* a = (new long[2]).ptr;
		a[0] = -1;
		a[1] = -2;

		long* b = (new long[2]).ptr;
		b[0] = 2;
		b[1] = long.max;

		long* c = (new long[2]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				paddq XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				paddq XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
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
