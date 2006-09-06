// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfmul_01_B;

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
		a[0] = -3.0f;
		a[1] = 7.0f;
		
		float[] b = new float[2];
		b[0] = 2.0f;
		b[1] = 8.0f;
		
		float[] c = new float[2];

		asm{
			movq MM0, a;
			movq MM1, b;
			pfmul MM0, MM1;
			movq c, MM0;
			emms;
		}

		if(c[0] != -6.0f){
			assert(0);
		}
		if(c[1] != 56.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
