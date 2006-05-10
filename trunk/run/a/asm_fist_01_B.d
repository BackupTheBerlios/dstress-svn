// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fist_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		float f = -800.0f;
		int i;
		
		asm{
			fld1;
			fld f;
			fist i;
		}
		
		if(i != -800){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
