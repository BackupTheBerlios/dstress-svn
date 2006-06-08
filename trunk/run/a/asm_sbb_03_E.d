// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sbb_03_E;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short a = 500;

		asm{
			clc;
			sbb a, 300;
		}

		if(a != 200){
			assert(0);
		}

		a = 500;

		asm{
			stc;
			sbb a, 300;
		}

		if(a != 199){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
