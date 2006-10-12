// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pmullw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		short* a = [cast(short)-1, 2, 0x7FFF, 7, 0x7FF0, 0x7EDC, 3, -16];
		short* b = [cast(short)2, 0, 7, 0x7FFF, 0x00FF, 0x7EDC, 5, 0x7ABC];

		ushort* c = new ushort[8];

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				pmullw XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				pmullw XMM0, XMM1;
				mov RAX, c;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != 0xFFFE){
			assert(0);
		}
		if(c[1] != 0x0000){
			assert(0);
		}
		if(c[2] != 0x7FF9){
			assert(0);
		}
		if(c[3] != 0x7FF9){
			assert(0);
		}
		if(c[4] != 0x7010){
			assert(0);
		}
		if(c[5] != 0x4D10){
			assert(0);
		}
		if(c[6] != 0x000F){
			assert(0);
		}
		if(c[7] != 0x5440){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
