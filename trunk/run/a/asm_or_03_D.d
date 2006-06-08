// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_or_03_D;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint b = 0b1110_1111__1111_0000__1111_1110__0111_0111;

		asm{
			mov EBX, b;
			or BL, 0b0011_1111;
			mov b, EBX;
		}

		if(b != 0b1110_1111__1111_0000__1111_1110__0111_1111){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
