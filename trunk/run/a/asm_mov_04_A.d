// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2007-01-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=824
// @desc@	[Issue 824] "mov EAX, func;" and "lea EAX, func;" generate incorrect code

module dstress.run.a.asm_mov_04_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	void func(){
	}

	int main(){
		void* a = &func;
		uint* b = cast(uint*) a;
		uint f = *b;
		uint g;

		asm{
			mov EAX, func;
			mov g, EAX;
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
