// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_hsubpd_01_A;

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
		b[0] = 1.0;
		b[1] = 4.0;

		double* c = (new double[2]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movupd XMM0, [EAX];
				mov EAX, b;
				movupd XMM1, [EAX];
				hsubpd XMM0, XMM1;
				mov EAX, c;
				movupd [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movupd XMM0, [RAX];
				mov RAX, b;
				movupd XMM1, [RAX];
				hsubpd XMM0, XMM1;
				mov RAX, c;
				movupd [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		c[0] += 1.0;
		if(c[0] < 0){
			c[0] = -c[0];
		}
		if(c[0] > double.epsilon * 64){
			assert(0);
		}

		c[1] += 3.0;
		if(c[1] < 0){
			c[1] = -c[1];
		}
		if(c[1] > double.epsilon * 16){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
