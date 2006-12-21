// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rsqrtss_01_A;

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
		a[1] = 2.0f;
		a[2] = 3.0f;
		a[3] = 4.0f;

		float* b = (new float[4]).ptr;
		b[0] = -1.0f;
		b[1] = 1.0f;
		b[2] = 4.0f;
		b[3] = -4.0f;

		float* c = (new float[4]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movups XMM0, [EAX];
				mov EAX, b;
				movups XMM1, [EAX];
				rsqrtss XMM0, XMM1;
				mov EAX, c;
				movups [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movups XMM0, [RAX];
				mov RAX, b;
				movups XMM1, [RAX];
				rsqrtss XMM0, XMM1;
				mov RAX, c;
				movups [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		c[0] += 1.0f;
		if(c[0] < 0.0f){
			c[0] = -c[0];
		}
		if(c[0] > 1.0f / 4096.0f){
			assert(0);
		}

		if(c[1] != a[1]){
			assert(0);
		}
		if(c[2] != a[2]){
			assert(0);
		}
		if(c[3] != a[3]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
