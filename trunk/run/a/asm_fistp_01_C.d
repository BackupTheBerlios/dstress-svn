// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fistp_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		float r = -800.0f;
		long a, b;
		
		asm{
			fldz;
			fld1;
			fld r;
			fistp a;
			fistp b;
		}
		
		if(a != -800){
			assert(0);
		}
		if(b != 1){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
