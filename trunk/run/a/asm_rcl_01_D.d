// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcl_01_D;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a = 0b1111_1100;

		asm{
			clc;
			mov CL, 1;
			rcl a, CL;
		}

		if(a != 0b1111_1000){
			assert(0);
		}

		asm{
			stc;
			mov CL, 1;
			rcl a, CL;
		}

		if(a != 0b1111_0001){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
