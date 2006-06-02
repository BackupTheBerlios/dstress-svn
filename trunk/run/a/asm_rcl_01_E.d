// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcl_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort a = 0b1111_1100_0000_1010;
			
		asm{
			clc;
			mov CL, 1;
			rcl a, CL;
		}

		if(a != 0b1111_1000_0001_0100){
			assert(0);
		}

		asm{
			stc;
			mov CL, 1;
			rcl a, CL;
		}

		if(a != 0b1111_0000_0010_1001){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
