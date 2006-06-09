// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_03_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort i = 0x00_00;

		asm{
			sub i, 1;
		}

		if(i != 0xFF_FF){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
