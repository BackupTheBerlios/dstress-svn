// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcl_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0b1111_1100__0000_0000__0111_1111__1111_1111;

		asm{
			clc;
			mov CL, 1;
			rcl a, CL;
		}

		if(a != 0b1111_1000__0000_0000__1111_1111__1111_1110){
			assert(0);
		}

		asm{
			stc;
			mov CL, 1;
			rcl a, CL;
		}

		if(a != 0b1111_0000__0000_0001__1111_1111__1111_1101){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
