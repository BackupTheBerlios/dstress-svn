// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_02_G;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 0x12_34_5F_00;
		byte b = 1;

		asm{
			mov ECX, i;
			sub CL, b;
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
