// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pxor_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		ushort* a = (new ushort[8]).ptr;
		a[0] = 0x1200;
		a[1] = 0x0120;
		a[2] = 0x0012;
		a[3] = 0x2001;
		a[4] = 0x0008;
		a[5] = 0xFFFF;
		a[6] = 0x0000;
		a[7] = 0x1111;

		ushort* b = (new ushort[8]).ptr;
		b[0] = 0x2100;
		b[1] = 0x2100;
		b[2] = 0x2100;
		b[3] = 0x2100;
		b[4] = 0x2100;
		b[5] = 0x0F00;
		b[6] = 0x0102;
		b[7] = 0x2222;

		ushort* c = (new ushort[8]).ptr;
		c[0] = 0x3300;
		c[1] = 0x2020;
		c[2] = 0x2112;
		c[3] = 0x0101;
		c[4] = 0x2108;
		c[5] = 0xF0FF;
		c[6] = 0x0102;
		c[7] = 0x3333;

		ushort* d = (new ushort[8]).ptr;
		ushort* e = (new ushort[8]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				pxor XMM1, XMM0;
				mov EAX, d;
				movdqu [EAX], XMM0;
				mov EAX, e;
				movdqu [EAX], XMM1;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				pxor XMM1, XMM0;
				mov RAX, d;
				movdqu [RAX], XMM0;
				mov RAX, e;
				movdqu [RAX], XMM1;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}


		foreach(size_t i, ushort s; a[0 .. 8]){
			if(s != d[i]){
				assert(0);
			}
		}
		foreach(size_t i, ushort s; c[0 .. 8]){
			if(s != e[i]){
				assert(0);
			}
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
