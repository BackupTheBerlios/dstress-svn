// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmppd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		static double[2] A = [1.0, 2.0f];
		static double[2] B = [1.1, 2.0f];
		ulong[2] c;

		asm{
			movupd XMM0, A;
			movupd XMM1, B;
			cmppd XMM0, XMM1, 0;
			movupd c, XMM0;
		}

		if(c[0]){
			assert(0);
		}
		if(c[1] != ulong.max){
			assert(0);
		}
		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
