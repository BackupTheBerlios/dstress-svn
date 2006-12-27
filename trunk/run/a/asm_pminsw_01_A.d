// $HeadURL$
// $Date$
// $Author$

module dsterss.run.a.asm_pminsw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		short[] A = [cast(short)1, 2, 3, 4, 5, 6, 16, 2];
		short* a = A.ptr;

		short[] B = [cast(short)-9, 10, -11, -12, 13, 14, 0xFFF, 1];
		short* b = B.ptr;

		short* c = (new short[8]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				pminsw XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				pminsw XMM0, XMM1;
				mov RAX, c;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != -9){
			assert(0);
		}
		if(c[1] != 2){
			assert(0);
		}
		if(c[2] != -11){
			assert(0);
		}
		if(c[3] != -12){
			assert(0);
		}
		if(c[4] != 5){
			assert(0);
		}
		if(c[5] != 6){
			assert(0);
		}
		if(c[6] != 16){
			assert(0);
		}
		if(c[7] != 1){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
