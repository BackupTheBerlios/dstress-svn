// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_paddd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		int* a = (new int[4]).ptr;
		a[0] = 1;
		a[1] = 2;
		a[2] = 3;
		a[3] = 4;

		int* b = (new int[4]).ptr;
		b[0] = int.max-2;
		b[1] = int.min;
		b[2] = 0;
		b[3] = -6;

		int* c = (new int[4]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				paddd XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				paddd XMM0, XMM1;
				mov RAX, c;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != int.max - 1){
			assert(0);
		}
		if(c[1] != int.min + 2){
			assert(0);
		}
		if(c[2] != 3){
			assert(0);
		}
		if(c[3] != -2){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
