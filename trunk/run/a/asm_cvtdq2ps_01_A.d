// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtdq2ps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		int[] a = new int[4];
		a[0] = 0;
		a[1] = -1;
		a[2] = 2;
		a[3] = -3;

		float[] b = new float[4];

		asm{
			movdqu XMM0, a;
			cvtdq2ps XMM1, XMM0;
			movdqu b, XMM1;
		}

		if(b[0] != 0.0f){
			assert(0);
		}
		if(b[1] != -1.0f){
			assert(0);
		}
		if(b[2] != 2.0f){
			assert(0);
		}
		if(b[3] != -3.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
