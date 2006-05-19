// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_not_02_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint i;
		
		asm{
			mov EAX,  0b0110_1110__0000_1111__1100_0011__0011_1111;
			not EAX;
			mov i, EAX;
		}
		
		if(i != 0b1001_0001__1111_0000__0011_1100__1100_0000){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
