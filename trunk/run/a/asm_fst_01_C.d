// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fst_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		double a, b, c;
		
		asm{
			fldz;
			fld1;
			fst c;
			fstp a;
			fstp b;
		}
		
		if(a != 1.0){
			assert(0);
		}
		if(b != 0.0){
			assert(0);
		}
		if(c != 1.0){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
