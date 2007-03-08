// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_addps_01_A;

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
		a[1] = 20.0f;
		a[2] = 0.4f;
		a[3] = 1.0f;

		float* b = (new float[4]).ptr;
		b[0] = 4.0f;
		b[1] = 10.0f;
		b[2] = 4.0f;
		b[3] = -1.0f;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movups XMM0, [EAX];
				mov EAX, b;
				movups XMM1, [EAX];
				addps XMM0, XMM1;
				movups [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movups XMM0, [RAX];
				mov RAX, b;
				movups XMM1, [RAX];
				addps XMM0, XMM1;
				movups [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		b[0] -= 5.0f;
		if(b[0] < 0.0){
			b[0] = -b[0];
		}

		if(b[0] > float.epsilon * 16){
			assert(0);
		}

		b[1] -= 30.0f;
		if(b[1] < 0.0){
			b[1] = -b[1];
		}

		if(b[1] > float.epsilon * 16){
			assert(0);
		}

		b[2] -= 4.4f;
		if(b[2] < 0.0){
			b[2] = -b[2];
		}

		if(b[2] > float.epsilon * 16){
			assert(0);
		}

		if(b[3] < 0.0){
			b[3] = -b[3];
		}

		if(b[3] > float.epsilon * 16){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline x86 asm support");
	static assert(0);
}
