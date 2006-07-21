// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movss_01_B;

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

		float[] b = new float[4];
		b[0] = 5.0f;
		b[1] = 6.0f;
		b[2] = 7.0f;
		b[3] = 9.0f;

		float[] c = new float[4];

		asm{
			movups XMM0, a;
			movups XMM1, b;
			movss XMM0, XMM1;
			movups c, XMM0;
		}

		if(c[0] != b[0]){
			assert(0);
		}
		if(c[1] != a[1]){
			assert(0);
		}
		if(c[2] != a[2]){
			assert(0);
		}
		if(c[3] != a[3]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
