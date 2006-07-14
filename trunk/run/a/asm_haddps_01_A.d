// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_haddps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE3!()();

		float[] a = new float[4];
		a[0] = 6.1f;
		a[1] = 7.2f;
		a[2] = 8.3f;
		a[3] = 9.4f;
		
		float[] b = new float[4];
		b[0] = 1.0f;
		b[1] = 2.0f;
		b[2] = 3.0f;
		b[3] = 4.0f;

		float[] c = new float[4];

		asm{
			movups XMM0, a;
			movups XMM1, b;
			haddps XMM0, XMM1;
			movups c, XMM0;
		}

		c[0] -= 13.3f;
		if(c[0] < 0){
			c[0] = -c[0];
		}
		if(c[0] > float.epsilon * 16){
			assert(0);
		}

		c[1] -= 17.7;
		if(c[1] < 0){
			c[1] = -c[1];
		}
		if(c[1] > float.epsilon * 16){
			assert(0);
		}

		c[2] -= 3.0;
		if(c[2] < 0){
			c[2] = -c[2];
		}
		if(c[2] > float.epsilon * 16){
			assert(0);
		}

		c[3] -= 7.0;
		if(c[3] < 0){
			c[3] = -c[3];
		}
		if(c[3] > float.epsilon * 16){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
