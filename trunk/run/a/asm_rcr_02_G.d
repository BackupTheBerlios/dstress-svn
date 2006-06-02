// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcr_02_G;

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
			rcr AL, 2;
			mov a, EAX;
		}
		
		if(a != 0b1111_0000__1100_0011__1010_0101__0001_1111){
			assert(0);
		}
		
		asm{
			stc;
			mov EAX, a;
			rcr AL, 2;
			mov a, EAX;
		}

		if(a != 0b1111_0000__1100_0011__1010_0101__1100_0111){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
