// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_02_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 0;

		asm{
			mov ECX, i;
			sub ECX, 1;
			mov i, ECX;
		}

		if(i != 0xFF_FF_FF_FF){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
