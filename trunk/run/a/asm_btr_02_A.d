 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_btr_02_A;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 3;
		uint b = 0;

		asm{
			mov EBX, b;
			btr a, EBX;
			jnc error;
			btr a, EBX;
			jc error;
			btr a, EBX;
			jc error;
		}

		if(a != 2){
			assert(0);
		}

		return 0;
	error:
		assert(0);
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
