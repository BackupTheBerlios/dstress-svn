// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_inc_02_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}


version(runTest){
	int main(){
		int b = 0x12_FF_FF_FF;

		asm{
			inc b;
		}

		if(b != 0x13_00_00_00){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
