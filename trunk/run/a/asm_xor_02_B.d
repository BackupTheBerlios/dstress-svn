// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xor_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short a = 0x1534;
		short b = 0x0150;

		asm{
			mov AX, a;
			mov BX, b;
			xor BX, AX;
			mov b, BX;
		}

		if(b != (0x1534 ^ 0x0150)){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
