// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fmulp_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a = 2.0f;
		float b = -3.0f;

		asm{
			fldz;
			fld1;
			fld a;
			fld b;
			fmulp;
			fstp a;
			fst b;
		}

		a -= -6.0f;

		if(a < 0.0f){
			a = -a;
		}

		if(a > a.epsilon * 4.0f){
			assert(0);
		}

		if(b != 1.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
