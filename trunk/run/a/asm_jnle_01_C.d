// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnle_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = int.min;
		int b = int.max;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jnle save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == 0);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
