// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmc_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a = 0;

		asm{
			clc;
			cmc;
			jnc error;
			stc;
			cmc;
			jc error;
		}


		return 0;
	error:
		assert(0);
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
