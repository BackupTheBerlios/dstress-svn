// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movss_01_C;
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
		float b;

		asm{
			movups XMM0, A;
			movss b, XMM0;
		}

		if(b != A[0]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
