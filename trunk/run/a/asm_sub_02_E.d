// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_02_E;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 0x12_3F_00_00;

		asm{
			mov ECX, i;
			mov AX, 1;
			sub CX, AX;
			mov i, ECX;
		}

		if(i != 0x12_3F_FF_FF){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
