// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pf2id_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();

		float[] a = new float[2];
		a[0] = 123.0f;
		a[1] = -456.0f;

		int[] b = new int[2];

		asm{
			pf2id MM0, a;
			movq b, MM0;
			emms;
		}

		if(b[0] != a[0]){
			assert(0);
		}
		if(b[1] != a[1]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
