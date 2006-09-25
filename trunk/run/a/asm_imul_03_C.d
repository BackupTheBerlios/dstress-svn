// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_imul_03_C;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = -2;
		int b = 3;

		asm{
			mov EAX, a;
			mov EBX, b;
			imul EBX;
			mov b, EAX;
		}

		if(b != -6){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
