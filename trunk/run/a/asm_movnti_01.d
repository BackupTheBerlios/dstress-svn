// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movnti_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0x1234_ABCD;
		uint b = 2;

		asm{
			mov EAX, a;
			movnti b, EAX;
		}

		if(a != 0x1234_ABCD){
			assert(0);
		}
		if(b != 0x1234_ABCD){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
