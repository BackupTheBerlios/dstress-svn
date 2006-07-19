// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_di_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short a=0x12_34;
		short b;

		asm{
			mov DI, a;
			mov b, DI;
		}

		if(a != 0x12_34){
			assert(0);
		}
		if(b != 0x12_34){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
