// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fprem1_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		float a = 2.5f;
		float b = -4.2f;
		
		asm{
			finit;
			fld a;
			fld b;
			fprem1;
			fstp a;
		}
		
		a -= 0.8f;
		
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
