// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xor_02_F;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int b = 0x9ABCDEF0;

		asm{
			mov EBX, b;
			xor EBX, 0x15345678;
			mov b, EBX;
		}

		if(b != (0x15345678 ^ 0x9ABCDEF0)){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
