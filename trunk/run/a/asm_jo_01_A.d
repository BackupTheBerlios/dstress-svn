// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jo_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = int.min;

		asm{
			mov EAX, a;
			cmp EAX, 1;
			jo save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == int.min);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
