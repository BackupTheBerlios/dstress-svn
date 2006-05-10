// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_frndint_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		float a = 4.6f;
		
		asm{
			finit;
			fld a;
			frndint;
			fstp a;
		}
				
		a -= 5.0f;
		
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
