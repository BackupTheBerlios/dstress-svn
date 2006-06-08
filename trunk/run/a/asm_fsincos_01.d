// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fsincos_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a = 2.2f;
		float b = 2.2f;

		asm{
			fldz;
			fsincos;
			fstp a;
			fstp b;
		}

		a -= 1.0f;
		if(a < 0.0f){
			assert(0);
		}

		if(a > a.epsilon * 4.0f){
			assert(0);
		}

		if(b != 0.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
