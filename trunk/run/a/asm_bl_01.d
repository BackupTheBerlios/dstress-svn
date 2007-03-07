// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bl_01;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a=0x12;
		byte b;

		asm{
			mov BL, a;
			mov b, BL;
		}

		if(a != 0x12){
			assert(0);
		}
		if(b != 0x12){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
