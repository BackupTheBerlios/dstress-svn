// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_smsw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){

		ushort a = 0;

		asm{
			smsw a;
		}

		if(a == 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
