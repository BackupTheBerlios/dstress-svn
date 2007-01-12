// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fdivrp_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a = -3.0f;
		float b = 12.0f;

		asm{
			fld b;
			fldz;
			fld a;
			fdivrp ST(2),ST;
			fstp a;
			fstp b;
		}

		if(a != 0.0f){
			assert(0);
		}
		if(b != -4.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
