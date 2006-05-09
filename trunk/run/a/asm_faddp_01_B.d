// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_faddp_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		float a = -1.0f;
		float b = 3.5f;
		
		asm{
			fld a;
			fld b;
			faddp ST(1), ST;
			fstp a;
			fst a;
		}
		
		a -= 2.5f;
		
		a = (a > 0.0f) ? a : -a;
		
		if(a > a.epsilon * 4.0f){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
