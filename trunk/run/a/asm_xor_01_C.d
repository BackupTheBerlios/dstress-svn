// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xor_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = 0x15345678;
		int b = 0x9ABCDEF0;

		asm{
			mov EAX, a;
			xor b, EAX;
		}

		if(b != (0x15345678 ^ 0x9ABCDEF0)){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
