// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 0x12_34_5F_00;

		asm{
			mov EAX, i;
			sub AL, 1;
			mov i, EAX;
		}

		if(i != 0x12_34_5F_FF){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
