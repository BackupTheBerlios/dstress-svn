// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mulps_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		const float[4] A = [7.0f, 4.0f, 1.0f, -2.0f];
		const float[4] B = [3.0f, 2.0f, 0.0f, 5.0f];
		float[4] c;

		asm{
			movups XMM0, A;
			movups XMM1, B;
			mulps XMM0, XMM1;
			movups c, XMM0;
		}

		if(c[0] != 21.0f){
			assert(0);
		}
		if(c[1] != 8.0f){
			assert(0);
		}
		if(c[2] != 0.0f){
			assert(0);
		}
		if(c[3] != -10.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
