// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xadd_02_A;

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
			xadd BL, AL;
			mov a, AL;
			mov b, BL;
		}

		if(a != 3){
			assert(0);
		}
		if(b != 4){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
