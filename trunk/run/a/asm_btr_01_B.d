 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_btr_01_B;

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
			mov AX, a;
			mov BX, b;
			btr AX, BX;
			jnc error;
			btr AX, BX;
			jc error;
			btr AX, BX;
			jc error;
			mov a, AX;
		}

		if(a != 2){
			assert(0);
		}

		return 0;
	error:
		assert(0);
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
