// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pi2fd_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();

		int* a = (new int[2]).ptr;
		a[0] = 6;
		a[1] = 2;

		float* b = (new float[2]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				pi2fd MM0, [EAX];
				mov EAX, b;
				movq [EAX], MM0;
				emms;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				pi2fd MM0, [RAX];
				mov RAX, b;
				movq [RAX], MM0;
				emms;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(b[0] != 6.0f){
			assert(0);
		}

		if(b[1] != 2.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
