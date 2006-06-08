// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_not_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort a = 0b0110_1110_0000_1111;

		asm{
			not a;
		}

		if(a != 0b1001_0001_1111_0000){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
