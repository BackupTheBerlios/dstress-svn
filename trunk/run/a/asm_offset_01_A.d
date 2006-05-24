// $HeadURL$
// $Date$
// $Author$

// @author@	<lugaidster@gmail.com>
// @date@	2006-04-28
// @uri@	news:bug-116-3@http.d.puremagic.com/bugzilla/

module dstress.run.a.asm_offset_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	byte b;

	int main(){
		void* x = &b;
		void* y;
		
		static if(size_t.sizeof == 4){
			asm{
				mov EAX, offset b;
				mov y, EAX;
			}
		}else{
			pragma(msg, "DSTRESS{ERROR}: unsupported pointer size");
			static assert(0);
		}

		if(x != y){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
