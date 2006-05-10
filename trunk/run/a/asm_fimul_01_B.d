// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fimul_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		float a = 2.0f;
		int b = -3;
		
		asm{
			fld a;
			fimul b;
			fst a;
		}
		
		a -= -6.0f;
		
		if(a < 0.0f){
			a = -a;
		}
		
		if(a > a.epsilon * 4.0f){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
