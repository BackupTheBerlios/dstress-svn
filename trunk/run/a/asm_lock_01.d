// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lock_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint i = 0;
		asm{
			lock;
			inc i;
		}

		if(i != 1){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
