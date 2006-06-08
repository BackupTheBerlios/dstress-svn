// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mul_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint i;
		ubyte x = 0xFF;

		asm{
			mov EAX, 0x23_43_56_78u;
			mov AL, 0xEE;
			mov BL, x;
			mul BL;
			mov i, EAX;
		}

		if(i != 0x23_43_ED_12){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
