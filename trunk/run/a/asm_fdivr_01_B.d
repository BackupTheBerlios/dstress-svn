// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fdivr_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		float a = 12.0;
		float b = -3.0;
		
		asm{
			fldz;
			fld b;
			fdivr a;
			fstp a;
			fstp b;
		}
		
		if(a != -4.0){
			assert(0);
		}
		if(b != 0.0){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
