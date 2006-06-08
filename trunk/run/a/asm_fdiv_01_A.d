// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fdiv_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a = 12.0f;
		float b = -3.0f;
		float c;

		asm{
			fld a;
			fdiv b;
			fstp c;
		}

		if(c != -4.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
