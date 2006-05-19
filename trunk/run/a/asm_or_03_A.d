// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_or_03_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0b0110_1110__0000_1111__1100_0011__0011_1111;
		ubyte b = 0b0111_0111;
		
		asm{
			mov EAX, a;
			or b, AL;
		}
		
		if(b != 0b0111_1111){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
