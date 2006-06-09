// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_shrd_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort a = 0b0000_0000__1000_0000;
		ushort b = 0b1000_0000__0000_0101;

		asm{
			mov BX, b;
			mov CL, 3;
			shrd a, BX, CL;
			mov b, BX;
		}

		if(a != 0b1010_0000__0001_0000){
			assert(0);
		}
		if(b != 0b1000_0000__0000_0101){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
