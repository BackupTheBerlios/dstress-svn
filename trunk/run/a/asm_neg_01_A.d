// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_neg_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte y = 2;
				
		asm{
			neg y;
		}

		if(y != -2){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
