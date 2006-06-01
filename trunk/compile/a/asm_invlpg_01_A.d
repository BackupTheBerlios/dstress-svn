// $HeadURL$
// $Date$
// $Author$

// @author@	<fvbommel@wxs.nl>
// @date@	2006-05-31
// @uri@	news:bug-171-31@http.d.puremagic.com/bugzilla/

module dstress.compile.a.asm_invlpg_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	void invalidatePage(void* p){
        	asm{
			mov EAX, [p];
			invlpg [EAX];
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
