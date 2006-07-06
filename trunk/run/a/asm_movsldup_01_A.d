// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movsldup_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE3!()();

		float[] a = new float[4];
		a[0] = 1.0f;
		a[1] = -1.0f;
		a[2] = -2.0f;
		a[3] = 2.0f;
		
		float[] b = new float[4];

		asm{
			movups XMM0, a;
			movsldup XMM1, XMM0;
			movups b, XMM1;
		}

		if(a[0] != b[0]){
			assert(0);
		}
		if(a[0] != b[1]){
			assert(0);
		}
		if(a[2] != b[2]){
			assert(0);
		}
		if(a[2] != b[3]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
