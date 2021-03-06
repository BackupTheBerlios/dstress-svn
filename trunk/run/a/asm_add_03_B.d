// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.add_03_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 0x12_34_FF_FF;
		asm{
			mov EAX, i;
			add AX, 2;
			mov i, EAX;
		}

		if(i != 0x12_34_00_01){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
