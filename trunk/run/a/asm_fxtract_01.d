// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fxtract_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a = -8.0f;
		float exponent;
		float significand;
		float f;

		asm{
			fldz;
			fld a;
			fxtract;
			fstp significand;
			fstp exponent;
			fst f;
		}

		if(significand != -1.0f){
			assert(0);
		}
		if(exponent != 3.0f){
			assert(0);
		}
		if(f != 0.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
