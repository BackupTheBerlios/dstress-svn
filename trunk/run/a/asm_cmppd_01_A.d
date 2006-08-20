// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmppd_01_A;

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
		a[0] = 1.0;
		a[1] = 2.0;

		double* b = new double[2];
		b[0] = 1.1;
		b[1] = 2.0;

		ulong* c = new ulong[2];

		asm{
			mov EAX, a;
			movupd XMM0, [EAX];
			mov EAX, b;
			movupd XMM1, [EAX];
			cmppd XMM0, XMM1, 0;
			mov EAX, c;
			movupd [EAX], XMM0;
		}

		if(c[0]){
			assert(0);
		}
		if(c[1] != ulong.max){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
