// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_popad_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0x1234_ABCD;
		uint b = 0x00_00;
		size_t p1, p2, p3;
		
		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				mov p1, ESP;
				pushad;
				mov p2, ESP;
				mov EAX, b;
				popad;
				mov p3, ESP;
				mov b, EAX;
			}
		}else{
			pragma(msg, "DSTRESS{ERROR}: unhandled size of void pointer");
			static assert(0);
		}
		
		if(p1 != p3){
			assert(0);
		}
		if(p1-32 != p2){
			assert(0);
		}
		if(b != 0x1234_ABCD){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
