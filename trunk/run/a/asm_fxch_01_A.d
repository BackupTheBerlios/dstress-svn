// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fxch_01_A;

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
		
		float a2, b2;
		
		asm{
			fld a;
			fld b;
			fxch;
			fstp b2;
			fst a2;
		}
		
		if(a2 != b){
			assert(0);
		}
		if(b2 != a){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
