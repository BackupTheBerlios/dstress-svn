// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bswap_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0xAB_34_56_78;

		asm{
			mov EAX, a;
			bswap EAX;
			mov a, EAX;
		}

		if(a!=0x78_56_34_AB){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
