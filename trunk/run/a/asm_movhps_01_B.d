// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movhps_01_B;

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
		float[] b = new float[2];

		asm{
			movups XMM0, a;
			movhps b, XMM0;
			emms;
		}

		if(b[0] != a[2]){
			assert(0);
		}
		if(b[1] != a[3]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
