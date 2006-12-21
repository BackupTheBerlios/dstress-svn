// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_TORTURE_BLOCK__ -fPIC

module dstress.run.a.asm_movups_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		float[4] a = [1.0f, 2.0f, 3.0f, 4.0f];
		float[4] b;

		asm{
			movdqu XMM0, a;
			movups XMM1, XMM0;
			movdqu b, XMM1;
		}

		if(b[0] != a[0]){
			assert(0);
		}
		if(b[1] != a[1]){
			assert(0);
		}
		if(b[2] != a[2]){
			assert(0);
		}
		if(b[3] != a[3]){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
