// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnle_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = int.max;
		int b = int.min;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jnle save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == int.max);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
