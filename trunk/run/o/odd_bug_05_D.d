// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-07-02
// @uri@	news:bug-234-3@http.d.puremagic.com/issues/

module dstress.run.o.odd_bug_05_D;

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
		a[1] = 0.2f;
		a[2] = 3.0f;
		a[3] = 0.4f;

		float[] b = new float[4];

		float[] dummy = new float[4];

		asm{
			movups XMM0, a;
			movups b, XMM0;
			emms;
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
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
