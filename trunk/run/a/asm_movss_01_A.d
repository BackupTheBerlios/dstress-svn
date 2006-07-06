// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movss_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		float[] a = new float[4];
		a[0] = 1.0f;
		a[1] = 2.0f;
		a[2] = 3.0f;
		a[3] = 4.0f;
		
		float b = 9.0f;
		
		float[] c = new float[4];

		asm{
			movups XMM0, a;
			movss XMM0, b;
			movups c, XMM0;
		}

		if(c[0] != b){
			assert(0);
		}
		if(c[1] != 0.0f){
			assert(0);
		}
		if(c[2] != 0.0f){
			assert(0);
		}
		if(c[3] != 0.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
