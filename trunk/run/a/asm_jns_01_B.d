// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jns_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a;

		asm{
			mov EAX, 3;
			cmp EAX, 2;
			jns save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == 3);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
