// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mulss_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE!()();

		const float[4] A = [7.0f, 4.0f, 1.0f, -2.0f];
		const float B = 5.0f;
		float[4] c;
		
		asm{
			movups XMM0, A;
			mulss XMM0, B;
			movups c, XMM0;
		}
		
		if(c[0] != 35.0f){
			assert(0);
		}
		if(c[1] != 4.0f){
			assert(0);
		}
		if(c[2] != 1.0f){
			assert(0);
		}
		if(c[3] != -2.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
