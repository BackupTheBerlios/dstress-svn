// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fld_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a = 1.2f;
		float b;

		asm{
			fld a;
			fst b;
		}

		if(b != 1.2f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
