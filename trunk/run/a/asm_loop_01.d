// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_loop_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a;

		asm{
			mov EAX, 0;
			mov ECX, 10;
		start:	inc EAX;
			loop start;
			mov a, EAX;
		}

		if(a != 10){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
