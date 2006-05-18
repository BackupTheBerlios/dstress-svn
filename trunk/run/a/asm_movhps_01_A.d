// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movhps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		static float[4] A = [1.0f, 2.0f, 3.0f, 4.0f];
		static float[2] B = [5.0f, 6.0f];
		float[4] c;

		asm{
			movups XMM0, A;
			movhps XMM0, B;
			movups c, XMM0;
		}

		if(c[0] != A[0]){
			assert(0);
		}
		if(c[1] != A[1]){
			assert(0);
		}
		if(c[2] != B[0]){
			assert(0);
		}
		if(c[3] != B[1]){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
