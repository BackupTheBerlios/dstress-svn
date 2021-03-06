// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movntpd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		double* a = (new double[2]).ptr;
		a[0] = 1.0;
		a[1] = -1.0;

		double* b = (aligned_new!(double)(2, 16)).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movupd XMM0, [EAX];
				mov EAX, b;
				movntpd [EAX], XMM0;
				sfence;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movupd XMM0, [RAX];
				mov RAX, b;
				movntpd [RAX], XMM0;
				sfence;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(a[0] != b[0]){
			assert(0);
		}
		if(a[1] != b[1]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
