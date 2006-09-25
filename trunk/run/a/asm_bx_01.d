// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bx_01;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a = 0x12;
		byte b = 0x34;
		short s;

		asm{
			mov BH, a;
			mov BL, b;
			mov s, BX;
		}

		if(s != 0x12_34){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
