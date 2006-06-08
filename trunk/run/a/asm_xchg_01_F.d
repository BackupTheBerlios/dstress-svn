// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xchg_01_F;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = 0x1234_5566;
		int b = 0x7788_9ABC;

		asm{
			mov EBX, a;
			mov ECX, b;
			xchg EBX, ECX;
			mov a, EBX;
			mov b, ECX;
		}

		if(a != 0x7788_9ABC){
			assert(0);
		}
		if(b != 0x1234_5566){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
