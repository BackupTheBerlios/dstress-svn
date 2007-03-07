// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_02_F;

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
			mov EAX, 1;
			sub ECX, EAX;
			mov i, ECX;
		}

		if(i != 0xFF_FF_FF_FF){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
