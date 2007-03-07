// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sgdt_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){

		long u = 0;

		asm{
			sgdt u;
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
