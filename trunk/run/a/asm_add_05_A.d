// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.add_05_A;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte i = 4;
		asm{
			mov BL, 0xFF;
			mov AL, 2;
			add AL, BL;
			mov i, AL;
		}

		if(i != 0x01){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
