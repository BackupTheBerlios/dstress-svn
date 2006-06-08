// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_inc_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}


version(runTest){
	int main(){
		byte b = 0x2F;

		asm{
			inc b;
		}

		if(b != 0x30){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
