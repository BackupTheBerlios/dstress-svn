// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jne_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 4;
		uint b = 3;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jne save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == 4);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
