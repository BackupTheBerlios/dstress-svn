// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rol_01_E;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort a = 0b1111_1100_0000_1010;

		asm{
			rol a, 2;
		}

		if(a != 0b1111_0000_0010_1011){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
