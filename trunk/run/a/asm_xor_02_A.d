// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xor_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a = 1;
		ubyte b = 3;

		asm{
			mov AL, a;
			mov BL, b;
			xor BL, AL;
			mov b, BL;
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
