// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movntps_01_A;

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
		a[1] = -1.0f;
		a[2] = 0.0f;
		a[3] = 0.1f;

		float[] b = aligned_new!(float)(4, 16);

		asm{
			movups XMM0, a;
			movntps b, XMM0;
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
