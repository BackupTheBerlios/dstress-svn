// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.add_03_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(D_InlineAsm_X86){
	int main(){
		int i = 0x12_34_FF_FF;
		asm{
			mov EAX, i;
			add EAX, 2;
			mov i, EAX;
		}

		if(i != 0x12_35_00_01){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
