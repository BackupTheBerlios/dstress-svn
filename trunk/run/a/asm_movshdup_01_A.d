// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movshdup_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		float* a = (new float[4]).ptr;
		a[0] = 1.0f;
		a[1] = -1.0f;
		a[2] = -2.0f;
		a[3] = 2.0f;

		float* b = (new float[4]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movups XMM0, [EAX];
				movshdup XMM1, XMM0;
				mov EAX, b;
				movups [EAX], XMM1;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movups XMM0, [RAX];
				movshdup XMM1, XMM0;
				mov RAX, b;
				movups [RAX], XMM1;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(a[1] != b[0]){
			assert(0);
		}
		if(a[1] != b[1]){
			assert(0);
		}
		if(a[3] != b[2]){
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
