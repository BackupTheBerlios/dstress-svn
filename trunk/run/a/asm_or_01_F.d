// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_or_01_F;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0b1110_1111__1111_1111__1111_1110__0111_1111;

		asm{
			mov EAX, a;
			or EAX, 0b0110_1110__0000_1111__1100_0011__0011_1111;
			mov a, EAX;
		}

		if(a != 0b1110_1111__1111_1111__1111_1111__0111_1111){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
