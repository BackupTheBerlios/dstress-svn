// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_02_D;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 0x12_34_5F_00;

		asm{
			mov ECX, i;
			mov AL, 1;
			sub CL, AL;
			mov i, ECX;
		}

		if(i != 0x12_34_5F_FF){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
