// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pop_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort a = 0;
		size_t p1, p2, p3;

		static if(size_t.sizeof == 4){
			asm{
				mov AX, 0x1234;
				mov p1, ESP;
				push AX;
				mov p2, ESP;
				pop BX;
				mov p3, ESP;
				mov a, BX;
			}
		}else{
			pragma(msg, "DSTRESS{ERROR}: unhandled size of void pointer");
			static assert(0);
		}

		if(p1 != p3){
			assert(0);
		}
		if(p1-2 != p2){
			assert(0);
		}
		if(a != 0x12_34){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
