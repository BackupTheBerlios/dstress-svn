// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pavgb_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		ubyte* a = (new ubyte[16]).ptr;
		a[0] = 1;
		a[1] = 2;
		a[2] = 3;
		a[3] = 4;
		a[4] = 5;
		a[5] = 6;
		a[6] = 7;
		a[7] = 8;
		a[8] = 12;

		ubyte* b = (new ubyte[16]).ptr;
		b[0] = 5;
		b[1] = 2;
		b[2] = 11;
		b[3] = 8;
		b[4] = 15;
		b[5] = 4;
		b[6] = 1;
		b[7] = 4;
		b[8] = 6;

		ubyte[] c = new ubyte[16];
		c[0] = 3;
		c[1] = 2;
		c[2] = 7;
		c[3] = 6;
		c[4] = 10;
		c[5] = 5;
		c[6] = 4;
		c[7] = 6;
		c[8] = 9;

		ubyte* d = (new ubyte[16]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				pavgb XMM0, XMM1;
				mov EAX, d;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				pavgb XMM0, XMM1;
				mov RAX, d;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		for(size_t i = 0; i < c.length; i++){
			if(d[i] != c[i]){
				assert(0);
			}
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
