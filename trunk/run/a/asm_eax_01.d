// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_eax_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i;
		short s=0x12_34;

		asm{
			mov EAX, i;
			mov AX, s;
			mov i, EAX;
		}

		if(i != 0x00_00_12_34){
			assert(0);
		}
		if(s != 0x12_34){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
