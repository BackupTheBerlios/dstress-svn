// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_addsubpd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE3!()();

		double* a = new double[2];
		a[0] = 1.0;
		a[1] = 30.0;

		double* b = new double[2];
		b[0] = 4.0;
		b[1] = 10.0;

		asm{
			mov EAX, a;
			movupd XMM0, [EAX];
			mov EAX, b;
			movupd XMM1, [EAX];
			addsubpd XMM0, XMM1;
			movupd [EAX], XMM0;
		}

		b[0] += 3.0;
		if(b[0] < 0.0){
			b[0] = -b[0];
		}

		if(b[0] > double.epsilon * 16){
			assert(0);
		}

		b[1] -= 40.0;
		if(b[1] < 0.0){
			b[1] = -b[1];
		}

		if(b[1] > double.epsilon * 16){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
