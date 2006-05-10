// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fild_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		int i = 800;
		double d;
		
		asm{
			finit;
			fild i;
			fst d;
		}
		
		if(d != 800.0){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
