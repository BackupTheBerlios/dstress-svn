// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ah_02_P;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	enum E : byte{
		A = 0x12,
		B = 0x23
	}

	int main(){
		byte b;

		asm{
			mov AH, E.A;
			mov b, AH;
		}

		if(b != E.A){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
