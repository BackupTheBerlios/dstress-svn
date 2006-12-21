// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movq_01_C;

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
		a[1] = 0x1122_2222_5555_FFFF_LU;
		
		ulong* b = (new ulong[2]).ptr;
		b[0] = 0x1000_1111_5678_EF90_LU;
		b[1] = 0x1122_5566_77AA_FFFF_LU;

		ulong* c = (new ulong[2]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				movq XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movdqu XMM0, [RAX];
				mov RAX, b;
				movdqu XMM1, [RAX];
				movq XMM0, XMM1;
				mov RAX, c;
				movdqu [RAX], XMM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[1] == a[1]){
			// Intel
		}else if(c[1] == 0){
			// AMD
		}else{
			assert(0);
		}

		if(c[0] != b[0]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
