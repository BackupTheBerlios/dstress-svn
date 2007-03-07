 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_btc_01_A;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort a = 3;
		ushort b = 0;

		asm{
			mov BX, b;
			btc a, BX;
			jnc error;
			btc a, BX;
			jc error;
			btc a, BX;
			jnc error;
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
