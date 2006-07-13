// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-04-28
// @uri@	news:bug-118-3@http.d.puremagic.com/bugzilla/

module dstress.run.a.asm_movhlps_01_A;

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
		a[0] = 3.0f;
		a[1] = 4.0f;
		a[2] = 5.0f;
		a[3] = 6.0f;

		float[] b = new float[4];
		a[0] = 10.0f;
		a[1] = 20.0f;
		a[2] = 30.0f;
		a[3] = 40.0f;

		float[] c = new float[4];

		asm{
			movups XMM0, a;
			movups XMM1, b;
			movlhps XMM0, XMM1;
			movups c, XMM0;
			emms;
		}

		if(c[0] != a[0]){
			assert(0);
		}

		if(c[1] != a[1]){
			assert(0);
		}

		if(c[2] != b[0]){
			assert(0);
		}

		if(c[3] != b[1]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
