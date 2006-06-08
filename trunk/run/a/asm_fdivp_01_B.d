// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fdivp_01_B;

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

		asm{
			fldz;
			fld a;
			fld b;
			fdivp;
			fstp a;
			fstp b;
		}

		if(a != -4.0f){
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
