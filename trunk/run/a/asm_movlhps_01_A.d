// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movlhps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		static float[4] A = [3.0f, 4.0f, 5.0f, 6.0f];
		static float[4] B = [10.0f, 20.0f, 30.0f, 40.0f];
		float[4] c;

		asm{
			movups XMM0, A;
			movups XMM1, B;
			movlhps XMM0, XMM1;
			movups c, XMM0;
		}

		if(c[0] != B[2]){
			assert(0);
		}

		if(c[1] != B[3]){
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
