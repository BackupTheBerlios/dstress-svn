// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fmul_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		double a = 2.0;
		double b = -3.0;
		
		asm{
			fld a;
			fmul b;
			fst b;
		}
		
		b -= -6.0;
		
		if(b < 0.0){
			b = -b;
		}
		
		if(b > b.epsilon * 4.0){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
