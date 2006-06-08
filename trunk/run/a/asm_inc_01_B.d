// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_inc_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint i = 0x12_3F_FF_FFu;

		asm{
			mov EAX, i;
			inc AX;
			mov i, EAX;
		}

		if(i != 0x12_3F_00_00u){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
