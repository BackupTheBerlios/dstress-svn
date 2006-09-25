// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpsd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		double* a = new double[2];
		a[0] = 1.0;
		a[1] = 2.0;

		double* b = new double[2];
		b[0] = 1.0;
		b[1] = 2.0;

		ulong* c = new ulong[2];
		double* d = new double[2];

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movupd XMM0, [EAX];
				mov EAX, b;
				movupd XMM1, [EAX];
				cmpsd XMM0, XMM1, 0;
				mov EAX, c;
				movdqu [EAX], XMM0;
				mov EAX, d;
				movupd [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movupd XMM0, [RAX];
				mov RAX, b;
				movupd XMM1, [RAX];
				cmpsd XMM0, XMM1, 0;
				mov RAX, c;
				movdqu [RAX], XMM0;
				mov RAX, d;
				movupd [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != ulong.max){
			assert(0);
		}
		if(d[1] != a[1]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
