// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_divsd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		double[] a = new double[2];
		a[0] = -16.0f;
		a[1] =  12.0;
		
		double[] b = new double[2];
		b[0] = 2.0f;
		b[1] = 3.0f;
		
		double[] c = new double[2];

		asm{
			movupd XMM0, a;
			movupd XMM1, b;
			divsd XMM0, XMM1;
			movupd c, XMM0;
		}

		c[0] += 8.0f;
		if(c[0] < 0){
			c[0] = -c[0];
		}
		if(c[0] > double.epsilon * 16){
			assert(0);
		}

		c[1] -= 12.0f;
		if(c[1] < 0){
			c[1] = -c[1];
		}
		if(c[1] > double.epsilon * 16){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
