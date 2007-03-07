// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.add_04_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort i = 0xFF_FF;
		asm{
			mov AX, 2;
			add i, AX;
		}

		if(i != 0x00_01){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
