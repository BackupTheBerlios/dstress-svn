// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2007-01-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=824
// @desc@	[Issue 824] "mov EAX, func;" and "lea EAX, func;" generate incorrect code

module dstress.run.a.asm_lea_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	void func(){
	}

	int main(){
		void* f = &func;
		void* g = null;

		static if(4 == size_t.sizeof){
			asm{
				lea EAX, func;
				mov g, EAX;
			}
		}else static if(8 == size_t.sizeof){
			asm{
				lea RAX, func;
				mov g, RAX;
			}
		}else{
			static assert(0, "DSTRESS{XFAIL}: unsupported pointer size");
		}

		if(f != g){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
