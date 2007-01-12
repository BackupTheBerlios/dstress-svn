// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pshuflw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		short[] A = [9, 9, 9, 9];
		short* a = A.ptr;

		short[] B = [1, 2, 3, 4];
		short* b = B.ptr;

		short* c = (new short[4]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movq MM0, [EAX];
				mov EAX, b;
				movq MM1, [EAX];
				pshufw MM0, MM1, 0b11_00_01_10;
				mov EAX, c;
				movq [EAX], MM0;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movq MM0, [RAX];
				mov RAX, b;
				movq MM1, [RAX];
				pshufw MM0, MM1, 0b11_00_01_10;
				mov RAX, c;
				movq [RAX], MM0;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(c[0] != 3){
			assert(0);
		}
		if(c[1] != 2){
			assert(0);
		}
		if(c[2] != 1){
			assert(0);
		}
		if(c[3] != 4){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
