// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xor_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a = 1u;
		ubyte b = 3u;

		asm{
			mov AL, a;
			xor b, AL;
		}

		if(b != 2u){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
