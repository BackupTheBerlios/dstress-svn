// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movlpd_01_A;

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
		a[0] = 3.0;
		a[1] = 4.0;

		double b = 5.0;

		double* c = (new double[2]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movups XMM0, [EAX];
				movlpd XMM0, b;
				mov EAX, c;
				movups [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movups XMM0, [RAX];
				movlpd XMM0, b;
				mov RAX, c;
				movups [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != b){
			assert(0);
		}

		if(c[1] != a[1]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
