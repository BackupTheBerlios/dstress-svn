// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcr_01_H;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort a = 0b1110_0000__0000_0101;
			
		asm{
			clc;
			rcr a, 2;
		}
		
		if(a != 0b1011_1000__0000_0001){
			assert(0);
		}
		
		asm{
			stc;
			rcr a, 2;
		}

		if(a != 0b1110_1110_0000_0000){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
