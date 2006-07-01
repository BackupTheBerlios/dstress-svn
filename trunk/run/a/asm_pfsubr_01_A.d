// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfsubr_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();

		float[] a = new	float[2];
		a[0] = 6.0f;
		a[1] = 2.0f;

		float[] b = new float[2];
		b[0] = 2.0f;
		b[1] = 1.0f;

		float[] c = new float[2];

		asm{
			movq MM0, a;
			movq MM1, b;
			pfsubr MM0, MM1;
			movq c, MM0;
			emms;
		}

		if(c[0] != -4.0f){
			assert(0);
		}

		if(c[1] != -3.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
