// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_loopne_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a;

		asm{
			mov EAX, -5;
			mov ECX, 10;
		start:	inc EAX;
			loopne start;
			mov a, EAX;
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
