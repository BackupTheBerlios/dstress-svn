// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_test_03_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte b = 2u;

		asm{
			mov AL, b;
			test AL, 3;
			jz error;
			js error;
			jp error;
		}

		return 0;
	error:
		assert(0);
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
