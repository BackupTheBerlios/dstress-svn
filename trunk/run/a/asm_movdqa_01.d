// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movdqa_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	align(16) struct X{
		ulong[2] c;
	}

	int main(){
		X* a = new X();
		a.c[0]=1;
		a.c[1]=2;
		X* b = new X();

		if(a.c[0] == b.c[0]){
			assert(0);
		}
		if(a.c[1] == b.c[1]){
			assert(0);
		}

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqa XMM0, X.c[EAX];
				mov EAX, b;
				movdqa X.c[EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqa XMM0, X.c[RAX];
				mov RAX, b;
				movdqa X.c[RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(a.c[0] != b.c[0]){
			assert(0);
		}
		if(a.c[1] != b.c[1]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
