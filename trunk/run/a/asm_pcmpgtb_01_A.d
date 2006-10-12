// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pcmpgtb_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		byte* a = [cast(byte)1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
		byte* b = [cast(byte)1, 3, 2, 4, 6, 5, 7, 9, 8, 10, 12, 11, 13, 16, 15, 14];
		ubyte* c = new ubyte[16];

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				pcmpgtb XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				pcmpgtb XMM0, XMM1;
				mov RAX, c;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != 0){
			assert(0);
		}
		if(c[1] != 0){
			assert(0);
		}
		if(c[2] != 0xFF){
			assert(0);
		}
		if(c[3] != 0){
			assert(0);
		}
		if(c[4] != 0){
			assert(0);
		}
		if(c[5] != 0xFF){
			assert(0);
		}
		if(c[6] != 0){
			assert(0);
		}
		if(c[7] != 0){
			assert(0);
		}
		if(c[8] != 0xFF){
			assert(0);
		}
		if(c[9] != 0){
			assert(0);
		}
		if(c[10] != 0){
			assert(0);
		}
		if(c[11] != 0xFF){
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
