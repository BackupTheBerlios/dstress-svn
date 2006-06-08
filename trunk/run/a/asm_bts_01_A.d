 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_bts_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		ushort a = 2;
		ushort b = 0;

		asm{
			mov BX, b;
			bts a, BX;
			jc error;
			bts a, BX;
			jnc error;
			bts a, BX;
			jnc error;
		}

		if(a != 3){
			assert(0);
		}

		return 0;
	error:
		assert(0);
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
