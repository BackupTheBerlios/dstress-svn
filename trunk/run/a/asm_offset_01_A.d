// $HeadURL$
// $Date$
// $Author$

// @author@	<lugaidster@gmail.com>
// @date@	2006-04-28
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=116

// __DSTRESS_TORTURE_BLOCK__ -fPIC

module dstress.run.a.asm_offset_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}else{
	static assert(0, "DSTRESS{XFAIL}: no inline x86 asm support");
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
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, offset b;
				mov y, RAX;
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
}
