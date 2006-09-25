// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtpi2ps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!();
		haveMMX!();

		int* a = new int[2];
		a[0] = -3;
		a[1] = 2;

		float* b = new float[4];
		b[0] = 10.1f;
		b[1] = 20.2f;
		b[2] = 30.3f;
		b[3] = 40.4f;

		float* c = new float[4];

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movq MM0, [EAX];
				mov EAX, b;
				movups XMM0, [EAX];
				cvtpi2ps XMM0, MM0;
				mov EAX, c;
				movups [EAX], XMM0;
				emms;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movq MM0, [RAX];
				mov RAX, b;
				movups XMM0, [RAX];
				cvtpi2ps XMM0, MM0;
				mov RAX, c;
				movups [RAX], XMM0;
				emms;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		c[0] += 3.0f;
		if(c[0] < 0.0f){
			c[0] = -c[0];
		}
		if(c[0] > c[0].epsilon * 8){
			assert(0);
		}

		c[1] -= 2.0f;
		if(c[1] < 0.0f){
			c[1] = -c[1];
		}
		if(c[1] > c[1].epsilon * 8){
			assert(0);
		}

		if(c[2] != b[2]){
			assert(0);
		}
		if(c[3] != b[3]){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
