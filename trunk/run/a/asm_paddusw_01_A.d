// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_paddusw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		ushort* a = [cast(ushort)1, 0, 3, 4, 5, 6, 7, 8];
		ushort* b = [cast(ushort)ushort.max, 8, 7, 6, 5, 4, 3, 2];
		ushort* c = new ushort[8];

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				paddusw XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				paddusw XMM0, XMM1;
				mov RAX, c;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != ushort.max){
			assert(0);
		}
		if(c[1] != 8){
			assert(0);
		}
		if(c[2] != 10){
			assert(0);
		}
		if(c[3] != 10){
			assert(0);
		}
		if(c[4] != 10){
			assert(0);
		}
		if(c[5] != 10){
			assert(0);
		}
		if(c[6] != 10){
			assert(0);
		}
		if(c[7] != 10){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
