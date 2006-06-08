// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sar_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a = 0x84;

		asm{
			sar a, 1;
		}

		if(a != 0xC2){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
