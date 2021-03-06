// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpxchg_01_A;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a = 0;
		ubyte c = 3;
		asm{
			mov AL, 1;
			mov BL, 2;
			cmpxchg c, BL;
			mov a, AL;
		}

		if(c != 3){
			assert(0);
		}
		if(a != 3){
			assert(0);
		}

		a = 0;
		c = 3;

		asm{
			mov AL, 3;
			mov BL, 2;
			cmpxchg c, BL;
			mov a, AL;
		}

		if(c != 2){
			assert(0);
		}
		if(a != 3){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
