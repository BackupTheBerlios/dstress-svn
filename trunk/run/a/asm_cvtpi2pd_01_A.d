// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtpi2pd_01_A;

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
		double[2] b;

		asm{
			movq MM0, A;
			cvtpi2pd XMM0, MM0;
			movupd b, XMM0;
			emms;
		}

		b[0] += 3.0;
		if(b[0] < 0.0){
			b[0] = -b[0];
		}
		if(b[0] > b[0].epsilon * 8){
			assert(0);
		}


		b[1] -= 2.0;
		if(b[1] < 0.0){
			b[1] = -b[1];
		}
		if(b[1] > b[1].epsilon * 8){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
