// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_or_02_E;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort b = 0b1111_1110__0111_1111;

		asm{
			or b, 0b1100_0011__0011_1111;
		}

		if(b != 0b1111_1111__0111_1111){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
