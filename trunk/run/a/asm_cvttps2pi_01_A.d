// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvttps2pi_01_A;

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

		static float[4] A = [1.0f, 2.0f, 3.0f, 4.0f];
		int[2] b;

		asm{
			movups XMM0, A;
			cvttps2pi MM0, XMM0;
			movq b, MM0;
			emms;
		}

		if(b[0] != 1){
			assert(0);
		}

		if(b[1] != 2){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
