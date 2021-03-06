// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xchg_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a = 1;
		byte b = 3;

		asm{
			mov CL, b;
			xchg a, CL;
			mov b, CL;
		}

		if(a != 3){
			assert(0);
		}
		if(b != 1){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
