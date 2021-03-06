// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_paddusb_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		ubyte[] A = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
		ubyte* a = A.ptr;

		ubyte[] B = [ubyte.max, 7, 6, 5, 4, 3, 2, 1, 0, 1, 2, 3, 4, 5, 6, 7];
		ubyte* b = B.ptr;

		ubyte* c = (new ubyte[16]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				paddusb XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				paddusb XMM0, XMM1;
				mov RAX, c;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != ubyte.max){
			assert(0);
		}
		if(c[1] != 9){
			assert(0);
		}
		if(c[2] != 9){
			assert(0);
		}
		if(c[3] != 9){
			assert(0);
		}
		if(c[4] != 9){
			assert(0);
		}
		if(c[5] != 9){
			assert(0);
		}
		if(c[6] != 9){
			assert(0);
		}
		if(c[7] != 9){
			assert(0);
		}
		if(c[8] != 9){
			assert(0);
		}
		if(c[9] != 11){
			assert(0);
		}
		if(c[10] != 13){
			assert(0);
		}
		if(c[11] != 15){
			assert(0);
		}
		if(c[12] != 17){
			assert(0);
		}
		if(c[13] != 19){
			assert(0);
		}
		if(c[14] != 21){
			assert(0);
		}
		if(c[15] != 23){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
