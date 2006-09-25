// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ebx_02;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i=0x12_34_56_78;
		short s=0;

		asm{
			mov EBX, i;
			mov s, BX;
		}

		if(i != 0x12_34_56_78){
			assert(0);
		}
		if(s != 0x56_78){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
