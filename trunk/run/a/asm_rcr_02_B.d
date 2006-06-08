// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcr_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0b1111_1100__0000_0100__1111_1100__0100_0001;

		asm{
			clc;
			mov EAX, a;
			rcr AX, 1;
			mov a, EAX;
		}

		if(a != 0b1111_1100__0000_0100__0111_1110__0010_0000){
			assert(0);
		}

		asm{
			stc;
			mov EAX, a;
			rcr AX, 1;
			mov a, EAX;
		}

		if(a != 0b1111_1100__0000_0100__1011_1111__0001_0000){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
