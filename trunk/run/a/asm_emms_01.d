// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_emms_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		asm{
			emms;
		}
		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
