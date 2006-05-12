// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fyl2x_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveFPU!()();

		float a = -2.0f;
		float b;
		
		asm{
			fld a;
			fld a;
			fld1;
			fyl2x;
			fstp b;
			fst a;
		}
		
		if(b != -0.0f){
			assert(0);
		}
		if(a != -2.0f){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
