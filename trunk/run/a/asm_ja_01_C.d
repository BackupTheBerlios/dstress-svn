// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ja_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a=5;
		uint b=6;

		asm{
			mov EAX, a;
			cmp EAX, b;
			ja error;
		}

		return 0;

	error:
		assert(0);
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
