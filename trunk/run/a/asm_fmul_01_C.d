// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fmul_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float a = 2.0f;
		float b = -3.0f;

		asm{
			fld a;
			fld b;
			fmul ST, ST(1);
			fst b;
		}

		b -= -6.0f;

		if(b < 0.0f){
			b = -b;
		}

		if(b > b.epsilon * 4.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
