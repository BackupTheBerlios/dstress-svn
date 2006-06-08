// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fptan_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		double a = 4.0;
		double b;

		asm{
			fld a;
			fptan;
			fstp b;
			fstp a;
		}

		if(b != 1.0){
			assert(0);
		}

		a -= 1.1578212823495774852;

		if(a < 0.0){
			a = -a;
		}

		if(a > a.epsilon * 4.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
