// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(D_InlineAsm_X86){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		float* a = (new float[4]).ptr;
		a[0] = 1.0f;
		a[1] = 2.0f;
		a[2] = 3.0f;
		a[3] = 4.0f;

		float* b = (new float[4]).ptr;
		b[0] = 1.1f;
		b[1] = 1.9f;
		b[2] = 3.0f;
		b[3] = 4.1f;

		uint* c = (new uint[4]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movups XMM0, [EAX];
				mov EAX, b;
				movups XMM1, [EAX];
				cmpps XMM0, XMM1, 0;
				mov EAX, c;
				movups [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movups XMM0, [RAX];
				mov RAX, b;
				movups XMM1, [RAX];
				cmpps XMM0, XMM1, 0;
				mov RAX, c;
				movups [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}
		if(c[0]){
			assert(0);
		}
		if(c[1]){
			assert(0);
		}
		if(c[2] != uint.max){
			assert(0);
		}
		if(c[3]){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
