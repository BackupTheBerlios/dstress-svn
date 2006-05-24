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
		size_t a;
		size_t p1, p2, p3;
		
		static if(size_t.sizeof == 4){
			asm{
				mov p1, ESP;
				push 0x12;
				mov p2, ESP;
				pop a;
				mov p3, ESP;
			}
		}else{
			pragma(msg, "DSTRESS{ERROR}: unhandled size of void pointer");
			static assert(0);
		}
		
		if(p1 != p3){
			assert(0);
		}
		if(p1 - size_t.sizeof != p2){
			assert(0);
		}
		if(a != 0x12){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
