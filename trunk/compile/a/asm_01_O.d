// $HeadURL$
// $Date$
// $Author$

// @author@	<fvbommel@wxs.nl>
// @date@	2006-07-01
// @uri@	news:bug-233-3@http.d.puremagic.com/issues/

module dstress.compile.a.asm_01_N;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	void foo(){
	}

	void test(){
		for(;;){
			asm {
				nop;
			}
			foo();
		}

		for(;;){
			foo();
			asm {
				nop;
			}
		}
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}