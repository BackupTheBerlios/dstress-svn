// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movq_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		ulong* a = (new ulong[2]).ptr;
		a[0] = 0x1234_ABCD_5678_EF90_LU;
		a[1] = 0x1122_5566_77AA_FFFF_LU;

		ulong* b = (new ulong[2]).ptr;

		ulong c = 0x1234_ABCD_5678_EF01_LU;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				movq c, XMM0;
				mov EAX, b;
				movq [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				movq c, XMM0;
				mov RAX, b;
				movq [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(b[0] != c){
			assert(0);
		}

		if(b[1] != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
