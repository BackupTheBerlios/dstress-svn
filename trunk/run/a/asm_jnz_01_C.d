// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnz_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a;

		asm{
			mov EAX, 1;
			cmp EAX, -1;
			jnz save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == 1);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
