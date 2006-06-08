 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_sal_02_D;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a = 0b1011_0011;

		asm{
			mov CL, 1;
			sal a, CL;
		}

		if(a != 0b0110_0110){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
