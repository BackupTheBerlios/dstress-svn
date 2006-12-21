// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_orps_01_A;

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
		a[0] = 5.0f;
		a[1] = 10.0f;
		a[2] = 1.0f;
		a[3] = 17.0f;

		float* b = (new float[4]).ptr;
		b[0] = 6.0f;
		b[1] = 9.0f;
		b[2] = -2.0f;
		b[3] = 20.0f;

		float* c = (new float[4]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movups XMM0, [EAX];
				mov EAX, b;
				movups XMM1, [EAX];
				orpd XMM0, XMM1;
				mov EAX, c;
				movups [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movups XMM0, [RAX];
				mov RAX, b;
				movups XMM1, [RAX];
				orpd XMM0, XMM1;
				mov RAX, c;
				movups [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != 7.0f){
			assert(0);
		}
		if(c[1] != 11.0f){
			assert(0);
		}
		if(c[2] != -float.infinity){
			assert(0);
		}
		if(c[3] != 21.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
