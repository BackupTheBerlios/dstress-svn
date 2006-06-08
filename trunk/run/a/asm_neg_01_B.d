// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_neg_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short y = -1234;

		asm{
			neg y;
		}

		if(y != 1234){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
