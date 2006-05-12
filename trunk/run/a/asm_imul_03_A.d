// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_imul_03_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a = -2;
		byte b = 3;
		
		asm{
			mov AL, a;
			mov BL, b;
			imul BL;
			mov b, AL;
		}
	
		if(b != -6){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
