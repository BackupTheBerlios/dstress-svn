// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fdivr_01_D;

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
		float c = 9.9f;

		asm{
			fld b;
			fldz;
			fld a;
			fdivr ST(2),ST;
			fstp a;
			fstp b;
			fstp c;
		}

		if(a != 12.0f){
			assert(0);
		}
		if(b != 0.0f){
			assert(0);
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
