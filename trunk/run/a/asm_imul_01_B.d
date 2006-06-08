// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_imul_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short a = -2;
		short b = 3;

		asm{
			mov AX, a;
			imul b;
			mov b, AX;
		}

		if(b != -6){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
