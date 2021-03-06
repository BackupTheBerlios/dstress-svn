// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnl_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = uint.min;
		int b = uint.max;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jnl save;
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
