// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movntps_01_A;

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
		a[0] = 1.0f;
		a[1] = -1.0f;
		a[2] = 0.0f;
		a[3] = 0.1f;

		float* b = (aligned_new!(float)(4, 16)).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movups XMM0, [EAX];
				mov EAX, b;
				movntps [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movups XMM0, [RAX];
				mov RAX, b;
				movntps [RAX], XMM0;
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
		if(a[2] != b[2]){
			assert(0);
		}
		if(a[3] != b[3]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
