// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_divps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		float* a = new float[4];
		a[0] = -16.0f;
		a[1] = 12.0f;
		a[2] = 3.3f;
		a[3] = 0.0f;

		float* b = new float[4];
		b[0] = 2.0f;
		b[1] = 3.0f;
		b[2] = 1.0f;
		b[3] = 9.7f;

		float* c = new float[4];

		asm{
			mov EAX, a;
			movups XMM0, [EAX];
			mov EAX, b;
			movups XMM1, [EAX];
			divps XMM0, XMM1;
			mov EAX, c;
			movups [EAX], XMM0;
		}

		c[0] += 8.0f;
		if(c[0] < 0){
			c[0] = -c[0];
		}
		if(c[0] > float.epsilon * 16){
			assert(0);
		}

		c[1] -= 4.0f;
		if(c[1] < 0){
			c[1] = -c[1];
		}
		if(c[1] > float.epsilon * 16){
			assert(0);
		}

		c[2] -= 3.3f;
		if(c[2] < 0){
			c[2] = -c[2];
		}
		if(c[2] > float.epsilon * 16){
			assert(0);
		}

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
