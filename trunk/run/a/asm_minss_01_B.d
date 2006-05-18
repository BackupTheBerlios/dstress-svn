// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_maxss_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		static float[4] A = [2.0f, 3.0f, 17.0f, -1.0f];
		float b = 1.0f;
		float[4] c;

		asm{
			movups XMM0, A;
			minss XMM0, b;
			movups c, XMM0;
		}

		if(c[0] != 1.0f){
			assert(0);
		}

		if(c[1] != 3.0f){
			assert(0);
		}
		
		if(c[2] != 17.0f){
			assert(0);
		}

		if(c[3] != -1.0f){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}