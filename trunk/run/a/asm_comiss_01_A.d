 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_comiss_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		float* a = new float[4];
		a[0] = 0.0f;
		a[1] = 1.0f;
		a[2] = 3.0f;
		a[3] = 5.0f;

		float* b = new float[4];
		b[0] = 0.0f;
		b[1] = 2.0f;
		b[2] = 4.0f;
		b[3] = 6.0f;

		asm{
			mov EAX, a;
			movups XMM0, [EAX];
			mov EAX, b;
			movups XMM1, [EAX];
			comiss XMM0, XMM1;
			jnz error;
			jp error;
			jc error;
		}

		return 0;
	error:
		assert(0);
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
