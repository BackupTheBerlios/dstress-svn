// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcpps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		float* a = (new float[4]).ptr;
		a[0] = 1.0f;
		a[1] = 2.0f;
		a[2] = 0.5f;
		a[3] = -4.0f;

		float* b = (new float[4]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movups XMM0, [EAX];
				rcpps XMM1, XMM0;
				mov EAX, b;
				movups [EAX], XMM1;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movups XMM0, [RAX];
				rcpps XMM1, XMM0;
				mov RAX, b;
				movups [RAX], XMM1;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		b[0] -= 1.0f;
		if(b[0] < 0.0f){
			b[0] = -b[0];
		}
		if(b[0] > 1.0f / 4096.0f){
			assert(0);
		}

		b[1] -= 0.5f;
		if(b[1] < 0.0f){
			b[1] = -b[1];
		}
		if(b[1] > 0.5f / 4096.0f){
			assert(0);
		}

		b[2] -= 2.0f;
		if(b[2] < 0.0f){
			b[2] = -b[2];
		}
		if(b[2] > 2.0f / 4096.0f){
			assert(0);
		}

		b[3] += 0.25f;
		if(b[3] < 0.0f){
			b[3] = -b[3];
		}
		if(b[3] > 0.25f / 4096.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
