// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fld1_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		double f = -800.9;

		asm{
			fld1;
			fstp f;
		}

		if(f != 1.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
