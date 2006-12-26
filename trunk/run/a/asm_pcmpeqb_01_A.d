// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pcmpeqb_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		byte[] A = [cast(byte)1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
		byte* a = A.ptr;

		byte[] B = [cast(byte)1, 0, byte.min, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 16];
		byte* b = B.ptr;

		ubyte* c = (new ubyte[16]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				pcmpeqb XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				pcmpeqb XMM0, XMM1;
				mov RAX, c;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != 0xFF){
			assert(0);
		}
		if(c[1] != 0){
			assert(0);
		}
		if(c[2] != 0){
			assert(0);
		}
		if(c[3] != 0){
			assert(0);
		}
		if(c[4] != 0){
			assert(0);
		}
		if(c[5] != 0){
			assert(0);
		}
		if(c[6] != 0){
			assert(0);
		}
		if(c[7] != 0){
			assert(0);
		}
		if(c[8] != 0){
			assert(0);
		}
		if(c[9] != 0){
			assert(0);
		}
		if(c[10] != 0){
			assert(0);
		}
		if(c[11] != 0){
			assert(0);
		}
		if(c[12] != 0){
			assert(0);
		}
		if(c[13] != 0){
			assert(0);
		}
		if(c[14] != 0){
			assert(0);
		}
		if(c[15] != 0xFF){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
