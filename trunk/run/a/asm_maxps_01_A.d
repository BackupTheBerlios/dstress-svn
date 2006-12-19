// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_maxps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		float* a = (new float[4]).ptr;
		a[0] = 2.0f;
		a[1] = 3.0f;
		a[2] = 16.0f;
		a[3] = -1.0f;

		float* b = (new float[4]).ptr;
		b[0] = 1.0f;
		b[1] = 4.0f;
		b[2] = -17.0f;
		b[3] = 1.0f;

		float* c = (new float[4]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movups XMM0, [EAX];
				mov EAX, b;
				movups XMM1, [EAX];
				maxps XMM0, XMM1;
				mov EAX, c;
				movups [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movups XMM0, [RAX];
				mov RAX, b;
				movups XMM1, [RAX];
				maxps XMM0, XMM1;
				mov RAX, c;
				movups [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != 2.0f){
			assert(0);
		}

		if(c[1] != 4.0f){
			assert(0);
		}

		if(c[2] != 16.0f){
			assert(0);
		}

		if(c[3] != 1.0f){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
