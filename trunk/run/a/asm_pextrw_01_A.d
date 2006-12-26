// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pextrw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		ushort[] X = [cast(ushort)1, 2, 3, 4, 5, 0xFFFF, 7, 0];
		ushort* x = X.ptr;

		uint a;
		uint b;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, x;
				movdqu XMM0, [EAX];
				pextrw EAX, XMM0, 5;
				mov a, EAX;
				pextrw EDX, XMM0, 1;
				mov b, EDX;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, x;
				movdqu XMM0, [RAX];
				pextrw EAX, XMM0, 5;
				mov a, EAX;
				pextrw EDX, XMM0, 1;
				mov b, EDX;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(a != 0xFFFF){
			assert(0);
		}
		if(b != 2){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
