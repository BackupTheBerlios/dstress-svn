// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpxchg_02_C;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0;
		uint c = 3;
		asm{
			mov EAX, 1;
			mov EBX, 2;
			mov ECX, c;
			cmpxchg ECX, EBX;
			mov a, EAX;
			mov c, ECX;
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
			mov EAX, 3;
			mov EBX, 2;
			mov ECX, c;
			cmpxchg ECX, EBX;
			mov a, EAX;
			mov c, ECX;
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
