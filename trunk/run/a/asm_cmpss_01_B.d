// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpss_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE!()();

		float* a = new float[4];
		a[0] = 1.0f;
		a[1] = 2.0f;
		a[2] = 3.0f;
		a[3] = 4.0f;
		
		float b = 1.0f;
		uint* c = new uint[4];
		float* f = new float[4];

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movups XMM0, [EAX];
				cmpss XMM0, b, 0;
				mov EAX, c;
				movdqu [EAX], XMM0;
				mov EAX, f;
				movups [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movups XMM0, [RAX];
				cmpss XMM0, b, 0;
				mov RAX, c;
				movdqu [RAX], XMM0;
				mov RAX, f;
				movups [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != uint.max){
			assert(0);
		}
		if(f[1] != a[1]){
			assert(0);
		}
		if(f[2] != a[2]){
			assert(0);
		}
		if(f[3] != a[3]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
