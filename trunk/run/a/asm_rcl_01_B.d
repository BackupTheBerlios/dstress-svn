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
			rcl a, 1;
		}

		if(a != 0b1111_1000_0001_0100){
			assert(0);
		}

		asm{
			stc;
			rcl a, 1;
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
