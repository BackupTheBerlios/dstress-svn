// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnp_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a;

		asm{
			mov AL, 3;
			cmp AL, 2;
			jnp save;
			mov AL, 0;
		save:	mov a, AL;
		}

		assert(a == 3);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
