// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pcmpgtw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		short* a = [cast(short)1, 2, 3, 4, 5, 6, 7, 8];
		short* b = [cast(short)1, 0, byte.min, -5, -4, -3, -2, 8];
		ushort* c = new ushort[8];

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				pcmpgtw XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				pcmpgtw XMM0, XMM1;
				mov RAX, c;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != 0){
			assert(0);
		}
		if(c[1] != 0xFFFF){
			assert(0);
		}
		if(c[2] != 0xFFFF){
			assert(0);
		}
		if(c[3] != 0xFFFF){
			assert(0);
		}
		if(c[4] != 0xFFFF){
			assert(0);
		}
		if(c[5] != 0xFFFF){
			assert(0);
		}
		if(c[6] != 0xFFFF){
			assert(0);
		}
		if(c[7] != 0){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
