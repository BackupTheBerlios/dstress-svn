// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sbb_01_H;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short a = 500;
		short b = 300;

		asm{
			clc;
			mov BX, a;
			mov CX, b;
			sbb BX, CX;
			mov a, BX;
		}

		if(a != 200){
			assert(0);
		}

		a = 500;
		b = 300;

		asm{
			stc;
			mov BX, a;
			mov CX, b;
			sbb BX, CX;
			mov a, BX;
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
