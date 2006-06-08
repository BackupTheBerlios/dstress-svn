// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fxrstor_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		ubyte[512] state;

		float a;
		float b;

		asm{
			fld1;
			fldz;
			fxsave state;
			fldpi;
			fxrstor state;
			fstp a;
			fst b;
		}

		if(a != 0.0f){
			assert(0);
		}
		if(b != 1.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
