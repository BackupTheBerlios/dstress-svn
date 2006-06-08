 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_shl_02_H;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort a = 0b1001_1000_1011_0011;

		asm{
			shl a, 2;
		}

		if(a != 0b0110_0010_1100_1100){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
