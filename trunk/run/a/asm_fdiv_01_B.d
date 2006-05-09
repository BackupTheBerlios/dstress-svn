// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fdiv_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		double a = 12.0;
		double b = -3.0;
		double c;
		
		asm{
			fld a;
			fdiv b;
			fstp c;
		}
		
		if(c != -4.0){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
