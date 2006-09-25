// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jge_01_C;

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
			jge save;
			mov EAX, 1;
		save:	mov a, EAX;
		}

		assert(a == 1);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
