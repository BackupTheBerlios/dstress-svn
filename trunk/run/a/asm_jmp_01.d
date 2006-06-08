// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jmp_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = 0;

		asm{
			mov EAX, 0;
			add EAX, 1;
			mov a, EAX;
		}

		if(a != 1){
			assert(0);
		}

		asm{
			mov EAX, 0;
			jmp save2;
			add EAX, 1;
		save2:	mov a, EAX;
		}

		if(a != 0){
			assert(0);
		}


		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
