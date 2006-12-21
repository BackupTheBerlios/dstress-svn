// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movmskpd_01_A;

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

		uint b;


		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movupd XMM0, [EAX];
				mov EAX, 0x1234_5678;
				movmskpd EAX, XMM0;
				mov b, EAX;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movupd XMM0, [RAX];
				mov RAX, 0x1234_5678;
				movmskpd RAX, XMM0;
				mov b, RAX;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(b != 0x0000_0002){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
