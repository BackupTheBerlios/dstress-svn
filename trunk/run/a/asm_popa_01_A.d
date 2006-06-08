// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_popa_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}

version(runTest){
	int main(){
		ushort a = 0x12_AB;
		ushort b = 0x00_00;
		size_t p1, p2, p3;

		static if(size_t.sizeof == 4){
			asm{
				mov AX, a;
				mov p1, ESP;
				pusha;
				mov p2, ESP;
				mov AX, b;
				popa;
				mov p3, ESP;
				mov b, AX;
			}
		}else{
			pragma(msg, "DSTRESS{ERROR}: unhandled size of void pointer");
			static assert(0);
		}

		if(p1 != p3){
			assert(0);
		}
		if(p1-16 != p2){
			assert(0);
		}
		if(b != 0x12_AB){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
