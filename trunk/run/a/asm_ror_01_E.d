// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ror_01_E;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort a = 0b1111_1100__0000_0001;
			
		asm{
			mov CL, 1;
			ror a, CL;
		}

		if(a != 0b1111_1110__0000_0000){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
