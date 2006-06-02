// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcr_02_D;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0b1111_1100__0000_0000__0111_1111__1111_1101;
			
		asm{
			clc;
			mov CL, 1;
			mov EAX, a;
			rcr AL, CL;
			mov a, EAX;
		}

		if(a != 0b1111_1100__0000_0000__0111_1111__0111_1110){
			assert(0);
		}
		
		asm{
			stc;
			mov CL, 1;
			mov EAX, a;
			rcr AL, CL;
			mov a, EAX;
		}

		if(a != 0b1111_1100__0000_0000__0111_1111__1011_1111){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
