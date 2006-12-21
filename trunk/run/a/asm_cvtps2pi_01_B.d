// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtps2pi_01_B;

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

		float* a = (new float[4]).ptr;
		a[0] = 1.0f;
		a[1] = 2.0f;
		a[2] = 3.0f;
		a[3] = 4.0f;

		int* b = (new int[2]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				cvtps2pi MM0, [EAX];
				mov EAX, b;
				movq [EAX], MM0;
				emms;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				cvtps2pi MM0, [RAX];
				mov RAX, b;
				movq [RAX], MM0;
				emms;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(b[0] != 1){
			assert(0);
		}

		if(b[1] != 2){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
