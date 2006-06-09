// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_REQUIRE__ -g
// __GDB_SCRIPT__ break debug_info_11_A.d:23\nrun\nprint i
// __GDB_PATTERN__ 1 = 12345679

module dstress.run.d.debug_info_10_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(char[][] args){
		int i = 12345678;

		asm{
			inc i;
			nop;
			inc i;
		}
		if(i != 12345680){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
