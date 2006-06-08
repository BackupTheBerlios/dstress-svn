// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fst_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a, b, c;

		asm{
			fldz;
			fldz;
			fld1;
			fst ST(1);
			fstp a;
			fstp b;
			fstp c;
		}

		if(a != 1.0f){
			assert(0);
		}
		if(b != 1.0f){
			assert(0);
		}
		if(c != 0.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
