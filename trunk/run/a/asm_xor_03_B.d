// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xor_03_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short b = 0x0150;

		asm{
			mov AX, b;
			xor AX, 0x1534;
			mov b, AX;
		}

		if(b != (0x1534 ^ 0x0150)){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
