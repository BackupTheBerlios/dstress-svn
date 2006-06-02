// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sahf_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}

version(runTest){
	int main(){
		asm{
			mov AH, 0b1101_0100;
			sahf;
			jc error;
			jnp error;
			jnz error;
		}

		return 0;

	error:
		assert(0);
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
			
