// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_test_02_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 3u;
		uint b = 2u;

		asm{
			mov EAX, a;
			mov EBX, b;
			test EBX, EAX;
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
