// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_packssdw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();
		haveMMX!()();

		int* a = (new int[4]).ptr;
		a[0] = 1;
		a[1] = -2;
		a[2] = 3;
		a[3] = -4;

		int* b = (new int[4]).ptr;
		b[0] = 5;
		b[1] = -6;
		b[2] = 7;
		b[3] = -8;

		short* c = (new short[8]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				packssdw XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				packssdw XMM0, XMM1;
				mov RAX, c;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != 1){
			assert(0);
		}
		if(c[1] != -2){
			assert(0);
		}
		if(c[2] != 3){
			assert(0);
		}
		if(c[3] != -4){
			assert(0);
		}
		if(c[4] != 5){
			assert(0);
		}
		if(c[5] != -6){
			assert(0);
		}
		if(c[6] != 7){
			assert(0);
		}
		if(c[7] != -8){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
