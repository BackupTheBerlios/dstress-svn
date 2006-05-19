// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_neg_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int y = 0x12_34_56_78;
				
		asm{
			neg y;
		}

		if(y != - 0x12_34_56_78){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
