// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pshufd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		float* a = [1.0f, 2.0f, 3.0f, 4.0f];
		float* b = [5.0f, 6.0f, 7.0f, 8.0f];

		float* c = new float[4];

		asm{
			mov EAX, a;
			movups XMM0, [EAX];
			mov EAX, b;
			movups XMM1, [EAX];
			pshufd XMM0, XMM1, 0b01_01_00_10;
			mov EAX, c;
			movups [EAX], XMM0;
		}

		if(c[0] != 7.0f){
			assert(0);
		}
		if(c[1] != 5.0f){
			assert(0);
		}
		if(c[2] != 6.0f){
			assert(0);
		}
		if(c[3] != 6.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
