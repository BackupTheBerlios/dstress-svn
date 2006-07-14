// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfcmpeq_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveMMX!()();

		float[] a = new float[2];
		a[0] = 123.0f;
		a[1] = -456.0f;

		float[] b = new float[2];
		b[0] = 123.0f;
		b[1] = 456.0f;

		uint[] c = new uint[2];

		asm{
			movq MM0, a;
			pfcmpeq MM0, b;
			movq c, MM0;
			emms;
		}

		if(c[0] != uint.max){
			assert(0);
		}
		if(c[1] != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
