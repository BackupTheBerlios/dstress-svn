// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fabs_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float f = -1.0f;

		asm{
			fld f;
			fabs;
			fst f;
		}

		if(f != 1.0f){
			assert(0);
		}

		f = 2.0f;

		asm{
			fld f;
			fabs;
			fst f;
		}

		if(f != 2.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
