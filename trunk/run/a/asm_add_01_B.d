// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_add_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint i = 0x12_23_45_56u;
		ushort s = 0xFFFFu;

		asm{
			mov EAX, 0x98_76_54_32;
			mov AX, s;
			add AX, 1;
			mov i, EAX;
		}

		if(i != 0x98_76_00_00u){
			assert(0);
		}
		if(s != 0xFFFFu){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
