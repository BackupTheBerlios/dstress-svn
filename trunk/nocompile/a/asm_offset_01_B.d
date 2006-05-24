// $HeadURL$
// $Date$
// $Author$

// @author@	<lugaidster@gmail.com>
// @date@	2006-04-28
// @uri@	news:bug-116-3@http.d.puremagic.com/bugzilla/

// __DSTRESS_ELINE__ 26

module dstress.nocompile.a.asm_offset_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	byte b;

	void main(){
		
		static if(size_t.sizeof == 4){
			asm{
				mov EAX, offsetof b;
			}
		}else{
			pragma(msg, "DSTRESS{ERROR}: unsupported pointer size");
			static assert(0);
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
