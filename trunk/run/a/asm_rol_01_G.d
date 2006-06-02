// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rol_01_G;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a = 0b1111_1100;
			
		asm{
			mov CL, 1;
			rol a, CL;
		}

		if(a != 0b1111_1001){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
