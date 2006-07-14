// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movaps_01_A;

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
		a[0] = 2.0f;
		a[1] = 3.0f;
		a[2] = 0.0f;
		a[3] = 0.5f;
		
		float[] b = new float[4];

		asm{
			movdqu XMM0, a;
			movaps XMM1, XMM0;
			movdqu b, XMM1;
		}

		if(a[0] != b[0]){
			assert(0);
		}

		if(a[1] != b[1]){
			assert(0);
		}

		if(a[2] != b[2]){
			assert(0);
		}

		if(a[3] != b[3]){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
