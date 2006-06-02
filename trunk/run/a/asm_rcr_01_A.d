// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcr_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a = 0b1111_1101;
			
		asm{
			clc;
			rcr a, 1;
		}

		if(a != 0b0111_1110){
			assert(0);
		}
		
		asm{
			stc;
			rcr a, 1;
		}

		if(a != 0b1011_1111){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
