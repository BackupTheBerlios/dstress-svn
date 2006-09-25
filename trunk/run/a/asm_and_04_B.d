 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_and_04_B;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0x12_34_56_06;
		ushort b = 0x41_05;

		asm{
			mov EAX, a;
			mov BX, b;
			and AX, BX;
			mov a, EAX;
		}

		if(a != 0x12_34_40_04){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
