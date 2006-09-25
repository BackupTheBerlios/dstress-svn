// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -fPIC

module dstress.run.a.add_05_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint i = 4;
		asm{
			mov EBX, 0xFF_FF_FF_FF;
			mov EAX, 2;
			add EAX, EBX;
			mov i, EAX;
		}

		if(i != 0x00_00_00_01){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
