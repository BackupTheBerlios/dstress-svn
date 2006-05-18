// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movss_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE!()();

		const float[4] A = [1.0f, 2.0f, 3.0f, 4.0f];
		const float B = 9.0f;
		float[4] c;
		
		asm{
			movups XMM0, A;
			movss XMM0, B;
			movups c, XMM0;
		}
		
		if(c[0] != B){
			assert(0);
		}
		if(c[1] != 0.0f){
			assert(0);
		}
		if(c[2] != 0.0f){
			assert(0);
		}
		if(c[3] != 0.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
