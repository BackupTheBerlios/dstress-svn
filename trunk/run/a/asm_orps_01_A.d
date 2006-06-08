// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_orps_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		static float[4] A = [5.0f, 10.0f, 1.0f, 17.0f];
		static float[4] B = [6.0f, 9.0f, -2.0f, 20.0f];
		float[4] c;

		asm{
			movups XMM0, A;
			movups XMM1, B;
			orpd XMM0, XMM1;
			movups c, XMM0;
		}

		if(c[0] != 7.0f){
			assert(0);
		}
		if(c[1] != 11.0f){
			assert(0);
		}
		if(c[2] != -float.infinity){
			assert(0);
		}
		if(c[3] != 21.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
