 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_shl_02_I;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0x80_01_01_02;

		asm{
			shl a, 2;
		}

		if(a != 0x00_04_04_08){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
