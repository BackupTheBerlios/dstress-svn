// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pshufd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const float[4] A = [1.0f, 2.0f, 3.0f, 4.0f];
		const float[4] B = [5.0f, 6.0f, 7.0f, 8.0f];

		float[4] c;

		asm{
			movups XMM0, A;
			movups XMM1, B;
			pshufd XMM0, XMM1, 0b01_01_00_10;
			movups c, XMM0;
		}

		if(c[0] != 6.0f){
			assert(0);
		}
		if(c[1] != 6.0f){
			assert(0);
		}
		if(c[2] != 5.0f){
			assert(0);
		}
		if(c[3] != 7.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
