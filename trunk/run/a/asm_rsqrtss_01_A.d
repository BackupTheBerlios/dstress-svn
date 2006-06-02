// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rsqrtss_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		const float[4] A = [1.0f, 2.0f, 3.0f, 4.0f];
		const float[4] B = [-1.0f, 1.0f, 4.0f, -4.0f];
		float[4] c;

		asm{
			movups XMM0, A;
			movups XMM1, B;
			rsqrtss XMM0, XMM1;
			movups c, XMM0;
		}

		c[0] += 1.0f;
		if(c[0] < 0.0f){
			c[0] = -c[0];
		}
		if(c[0] > 1.0f / 4096.0f){
			assert(0);
		}
		
		if(c[1] != A[1]){
			assert(0);
		}
		if(c[2] != A[2]){
			assert(0);
		}
		if(c[3] != A[3]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
