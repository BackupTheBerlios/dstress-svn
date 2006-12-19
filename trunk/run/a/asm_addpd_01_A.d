// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_addpd_01_A;

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
		a[0] = 1.123;
		a[1] = 1234.5;

		double* b = (new double[2]).ptr;
		b[0] = 0.0012;
		b[1] = -2.4;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movupd XMM0, [EAX];
				mov EAX, b;
				movupd XMM1, [EAX];
				addpd XMM0, XMM1;
				movupd [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movupd XMM0, [RAX];
				mov RAX, b;
				movupd XMM1, [RAX];
				addpd XMM0, XMM1;
				movupd [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		b[0] -= 1.1242;
		if(b[0] < 0.0){
			b[0] = -b[0];
		}

		if(b[0] > double.epsilon * 16){
			assert(0);
		}

		b[1] -= 1232.1;
		if(b[1] < 0.0){
			b[1] = -b[1];
		}

		if(b[1] > double.epsilon * 16){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
