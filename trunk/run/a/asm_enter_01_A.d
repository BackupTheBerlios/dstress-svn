// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_enter_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		asm{
			enter 2048, 30;
			leave;
		}
		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
