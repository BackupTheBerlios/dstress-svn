// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_prefetch1_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte b;
		
		asm{
			prefetcht1 b;
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
