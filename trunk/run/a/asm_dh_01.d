// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_dh_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a=0x12;
		byte b;

		asm{
			mov DH, a;
			mov b, DH;
		}

		if(a != 0x12){
			assert(0);
		}
		if(b != 0x12){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
