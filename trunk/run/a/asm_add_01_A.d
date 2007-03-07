// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_add_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}

version(runTest){
	int main(){
		uint i = 0x12_23_45_56;
		ubyte b = 0xFFu;

		asm{
			mov EAX, 0x98_76_54_32;
			mov AH, b;
			add AH, 1;
			mov i, EAX;
		}

		if(i != 0x98_76_00_32){
			assert(0);
		}

		if(b != 0xFFu){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
