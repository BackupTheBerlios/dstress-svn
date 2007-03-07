// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xadd_01_A;

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
			xadd b, AL;
			mov a, AL;
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
