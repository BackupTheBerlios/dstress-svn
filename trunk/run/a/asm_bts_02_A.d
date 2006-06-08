 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_bts_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint a = 2;
		uint b = 0;

		asm{
			mov EBX, b;
			bts a, EBX;
			jc error;
			bts a, EBX;
			jnc error;
			bts a, EBX;
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
