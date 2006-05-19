// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_neg_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint y = 0x78_56_43_21;
				
		asm{
			mov EAX, y;
			neg AX;
			mov y, EAX;
		}

		if(y != 0x78_56_BC_DF){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
