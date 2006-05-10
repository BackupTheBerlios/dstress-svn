// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fld_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		real a = 1.2L;
		double b;

		asm{
			fld a;
			fst b;
		}

		if(b != 1.2){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
