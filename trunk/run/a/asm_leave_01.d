// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_leave_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 1;
		
		asm{
			mov EAX, a;
			enter 2048, 30;
			leave;
			inc EAX;
			mov a, EAX;
		}
		
		if(a != 2){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
