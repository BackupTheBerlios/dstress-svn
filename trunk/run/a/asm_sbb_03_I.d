// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sbb_03_I;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = 50000;
		int b = 30000;

		asm{
			clc;
			mov ECX, b;
			sbb a, ECX;
		}

		if(a != 20000){
			assert(0);
		}

		a = 50000;
		b = 30000;

		asm{
			stc;
			mov ECX, b;
			sbb a, ECX;
		}

		if(a != 19999){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
