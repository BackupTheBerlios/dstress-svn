// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fisubr_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a = 2.4f;
		int b = 19;

		asm{
			fld a;
			fisubr b;
			fstp a;
		}

		a -= 16.6f;

		if(a < 0.0f){
			a = -a;
		}

		if(a > a.epsilon * 4.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
