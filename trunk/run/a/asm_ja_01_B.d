// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ja_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a=5;
		uint b=4;

		asm{
			mov EAX, a;
			cmp EAX, b;
			ja save;
		}

		assert(0);

	save:
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
