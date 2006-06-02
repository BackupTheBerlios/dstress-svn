// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_rcpss_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const float[4] A = [2.0f, 1.0f, 0.5f, -4.0f];
		const float[4] B = [5.0f, 6.0f, 7.0f, 8.0f];
		float[4] c;

		asm{
			movups XMM0, A;
			movups XMM1, B;
			rcpss XMM1, XMM0;
			movups c, XMM1;
		}
	
		c[0] -= 0.5f;
		if(c[0] < 0.0f){
			c[0] = -c[0];
		}
		if(c[0] > 0.5f / 4096.0f){
			assert(0);
		}

		if(c[1] != B[1]){
			assert(0);
		}
		
		if(c[2] != B[2]){
			assert(0);
		}
		
		if(c[3] != B[3]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
