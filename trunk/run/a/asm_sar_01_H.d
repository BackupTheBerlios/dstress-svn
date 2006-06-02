// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sar_01_H;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){	
		ushort a = 0x84_10;
		
		asm{
			sar a, 2;
		}
		
		if(a != 0xE1_04){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
