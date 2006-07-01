// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.add_05_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort i = 4;
		asm{
			mov BX, 0xFF_FF;
			mov AX, 2;
			add AX, BX;
			mov i, AX;
		}

		if(i != 0x00_01){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
