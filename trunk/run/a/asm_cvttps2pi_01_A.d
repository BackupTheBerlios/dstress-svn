// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvttps2pi_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!();
		haveMMX!();

		float[] a = new float[4];
		a[0] = 1.0f;
		a[1] = 2.0f;
		a[2] = 3.0f;
		a[3] = 4.0f;

		int[] b = new int[2];

		asm{
			movups XMM0, a;
			cvttps2pi MM0, XMM0;
			movq b, MM0;
			emms;
		}

		if(b[0] != 1){
			assert(0);
		}

		if(b[1] != 2){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
