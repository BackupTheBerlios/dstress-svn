// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fistp_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float f = -800.9f;
		int i;

		asm{
			fld f;
			fisttp i;
		}

		if(i != -800){
			assert(0);
		}

		f = -800.0f;

		asm{
			fld f;
			fisttp i;
		}

		if(i != -800){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
