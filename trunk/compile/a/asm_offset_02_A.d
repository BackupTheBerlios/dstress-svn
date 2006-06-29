// $HeadURL$
// $Date$
// $Author$

// @author@	<pmoore_member@pathlink.com>
// @date@	2006-06-21
// @uri@	news:e7cgng$13vq$1@digitaldaemon.com

module dstress.compile.a.asm_offset_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}

version(runTest){
	const int CONST_OFFSET = 10;

	int main(){
		asm{
			mov EDI, 10;
			mov EAX, [EDI + CONST_OFFSET];
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}

