// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtpi2ps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!();
		haveMMX!();

		static int[2] A = [-3, 2];
		static float[4] B = [10.1f, 20.2f, 30.3f, 40.4f];
		float[4] c;

		asm{
			movq MM0, A;
			movups XMM0, B;
			cvtpi2ps XMM0, MM0;
			movups c, XMM0;
			emms;
		}

		c[0] += 3.0f;
		if(c[0] < 0.0f){
			c[0] = -c[0];
		}
		if(c[0] > c[0].epsilon * 8){
			assert(0);
		}

		c[1] -= 2.0f;
		if(c[1] < 0.0f){
			c[1] = -c[1];
		}
		if(c[1] > c[1].epsilon * 8){
			assert(0);
		}

		if(c[2] != B[2]){
			assert(0);
		}
		if(c[3] != B[3]){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
