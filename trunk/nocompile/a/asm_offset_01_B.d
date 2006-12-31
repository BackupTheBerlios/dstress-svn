// $HeadURL$
// $Date$
// $Author$

// @author@	<lugaidster@gmail.com>
// @date@	2006-04-28
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=116

// __DSTRESS_ELINE__ 24

module dstress.nocompile.a.asm_offset_01_B;

version(D_InlineAsm_X86){
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
