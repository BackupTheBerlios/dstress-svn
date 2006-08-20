// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtpd2dq_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		double* a = new double[2];
		a[0] = -2.0;
		a[1] = 4.0;

		int* b = new int[4];

		asm{
			mov EAX, a;
			movdqu XMM0, [EAX];
			cvtpd2dq XMM1, XMM0;
			mov EAX, b;
			movdqu [EAX], XMM1;
		}

		if(b[0] != -2){
			assert(0);
		}
		if(b[1] != 4){
			assert(0);
		}
		if(b[2] != 0){
			assert(0);
		}
		if(b[3] != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
