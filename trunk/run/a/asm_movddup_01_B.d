// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movddup_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE3!()();

		double* a = (new double[2]).ptr;
		a[0] = 2.0;
		a[1] = 3.0;

		double* b = (new double[2]).ptr;

		double c = 1.0;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movupd XMM0, [EAX];
				movddup XMM0, c;
				mov EAX, b;
				movupd [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movupd XMM0, [RAX];
				movddup XMM0, c;
				mov RAX, b;
				movupd [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(b[0] != 1.0){
			assert(0);
		}

		if(b[1] != 1.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
