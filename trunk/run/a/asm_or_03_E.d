// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_or_03_E;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte b = 0b0111_0111;

		asm{
			or b, 0b0011_1111;
		}

		if(b != 0b0111_1111){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
