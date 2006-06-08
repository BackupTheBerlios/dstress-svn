// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xchg_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a = 1;
		byte b = 3;

		asm{
			mov BL, a;
			xchg BL, b;
			mov a, BL;
		}

		if(a != 3){
			assert(0);
		}
		if(b != 1){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
