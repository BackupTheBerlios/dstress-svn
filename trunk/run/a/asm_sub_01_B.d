// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sub_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 0x12_3F_00_00;

		asm{
			mov EAX, i;
			sub AX, 1;
			mov i, EAX;
		}

		if(i != 0x12_3F_FF_FF){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
