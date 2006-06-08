// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ror_02_F;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0b1111_1100__0000_0000__0111_1111__1111_1111;

		asm{
			mov CL, 1;
			mov EAX, a;
			ror EAX, CL;
			mov a, EAX;
		}

		if(a != 0b1111_1110__0000_0000__0011_1111__1111_1111){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
