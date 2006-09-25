// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpxch8b_01_B;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 1;
		uint d = 1;
		ulong c = 0;
		asm{
			mov EAX, 0;
			mov EDX, 0;

			mov EBX, 0xFFFFFFFF;
			mov ECX, 0xFFFFFFFF;
			cmpxch8b c;

			mov a, EAX;
			mov d, EDX;
		}

		if(c != c.max){
			assert(0);
		}
		if(a != 0){
			assert(0);
		}
		if(d != 0){
			assert(0);
		}

		c=1;

		asm{
			mov EAX, 0;
			mov EDX, 0;

			mov EBX, 0xFFFFFFFF;
			mov ECX, 0xFFFFFFFF;
			cmpxch8b c;

			mov a, EAX;
			mov d, EDX;
		}

		if(c != 1){
			assert(0);
		}
		if(a != 1){
			assert(0);
		}
		if(d != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
