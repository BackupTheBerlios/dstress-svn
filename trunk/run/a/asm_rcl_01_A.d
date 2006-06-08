// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcl_01_A;

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
			rcl a, 1;
		}

		if(a != 0b1111_1000){
			assert(0);
		}

		asm{
			stc;
			rcl a, 1;
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
