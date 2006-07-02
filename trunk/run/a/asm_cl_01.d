// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cl_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a = 0x12;
		byte b;

		asm{
			mov CL, a;
			mov b, CL;
		}

		if(b != 0x12){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
