// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_test_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a = 3u;
		ubyte b = 2u;

		asm{
			mov AL, a;
			test b, AL;
			jz error;
			js error;
			jp error;
		}

		return 0;
	error:
		assert(0);
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
