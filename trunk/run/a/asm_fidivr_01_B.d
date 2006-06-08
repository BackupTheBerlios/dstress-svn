// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fidivr_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a = -3.0f;
		short b = 12;

		asm{
			fld a;
			fidivr b;
			fstp a;
		}

		if(a != -4.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
