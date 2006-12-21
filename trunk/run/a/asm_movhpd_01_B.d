// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movhpd_01_B;

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
		a[1] = 2.0;

		double b;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movupd XMM0, [EAX];
				movhpd b, XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movupd XMM0, [RAX];
				movhpd b, XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(b != a[1]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
