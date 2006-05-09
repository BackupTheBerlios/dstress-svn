// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fiaddp_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		double a = -1.2;
		short b = 34;
		
		asm{
			finit;
			fld a;
			fiadd b;
			fst a;
		}
		
		a -= 32.8;
		
		a = (a > 0.0) ? a : -a;
		
		if(a >= a.epsilon * 16.0){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
