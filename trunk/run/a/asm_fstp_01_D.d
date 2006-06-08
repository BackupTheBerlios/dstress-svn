// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fstp_01_D;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a, b;

		asm{
			fldz;
			fldz;
			fld1;
			fstp ST(2);
			fstp a;
			fstp b;
		}

		if(a != 0.0f){
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
