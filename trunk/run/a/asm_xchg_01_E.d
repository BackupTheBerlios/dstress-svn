// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xchg_01_E;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short a = 0x1234;
		short b = 0x3421;

		asm{
			mov BX, a;
			mov CX, b;
			xchg BX, CX;
			mov a, BX;
			mov b, CX;
		}

		if(a != 0x3421){
			assert(0);
		}
		if(b != 0x1234){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
