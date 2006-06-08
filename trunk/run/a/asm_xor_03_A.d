// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xor_03_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte b = 3u;

		asm{
			mov AL, b;
			xor AL, 1;
			mov b, AL;
		}

		if(b != 2u){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
