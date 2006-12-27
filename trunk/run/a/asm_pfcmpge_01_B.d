// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfcmpge_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();

		float[] A = [123.0f, 458.0f];
		float* a = A.ptr;

		float[] B = [124.0f, 456.0f];
		float* b = B.ptr;

		uint* c = (new uint[2]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movq MM0, [EAX];
				mov EAX, b;
				movq MM1, [EAX];
				pfcmpge MM0, MM1;
				mov EAX, c;
				movq [EAX], MM0;
				emms;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movq MM0, [RAX];
				mov RAX, b;
				movq MM1, [RAX];
				pfcmpge MM0, MM1;
				mov RAX, c;
				movq [RAX], MM0;
				emms;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != 0){
			assert(0);
		}
		if(c[1] != 0xFFFF_FFFF){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
