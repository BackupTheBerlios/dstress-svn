// $HeadURL$
// $Date$
// $Author$


module dstress.run.a.asm_fcos_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float f = -0.0L;

		asm{
			fld f;
			fcos;
			fstp f;
		}

		if(f != 1.0L){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
