// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcr_02_I;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0b1111_0000__1100_0011__1010_0101__0111_1110;

		asm{
			clc;
			mov EAX, a;
			rcr EAX, 2;
			mov a, EAX;
		}

		if(a != 0b0011_1100__0011_0000__1110_1001__0101_1111){
			assert(0);
		}

		asm{
			stc;
			mov EAX, a;
			rcr EAX, 2;
			mov a, EAX;
		}

		if(a != 0b1100_1111__0000_1100__0011_1010__0101_0111){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
