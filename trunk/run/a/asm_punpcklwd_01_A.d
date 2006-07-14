// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_punpcklwd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		short[] a = new short[8];
		a[0] = 4;
		a[1] = 5;
		a[2] = 6;
		a[3] = 7;
		a[4] = 0;
		a[5] = 1;
		a[6] = 2;
		a[7] = 3;

		short[] b = new short[8];
		b[0] = -4;
		b[1] = -5;
		b[2] = -6;
		b[3] = -7;
		b[4] = 0;
		b[5] = -1;
		b[6] = -2;
		b[7] = -3;

		short[] c = new short[8];

		asm{
			movdqu XMM0, a;
			movdqu XMM1, b;
			punpcklwd XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != 4){
			assert(0);
		}
		if(c[1] != -4){
			assert(0);
		}
		if(c[2] != 5){
			assert(0);
		}
		if(c[3] != -5){
			assert(0);
		}
		if(c[4] != 6){
			assert(0);
		}
		if(c[5] != -6){
			assert(0);
		}
		if(c[6] != 7){
			assert(0);
		}
		if(c[7] != -7){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}

