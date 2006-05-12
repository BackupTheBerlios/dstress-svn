// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_idiv_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		short y = 2;
		
		short a = 0x00_00;
		short b = - 0x0F_FF;
		
		asm{
			mov DX, a;
			mov AX, b;
			mov CX, y;
			idiv CX;
			mov a, AX;
			mov b, DX;
		}

		if(a != 0x78_00){
			assert(0);
		}
		if(b != 1){
			assert(0);
		}
		
		a = 0x00_00;
		b = - 0x0F_FE;

		asm{
			mov DX, a;
			mov AX, b;
			mov CX, y;
			idiv CX;
			mov a, AX;
			mov b, DX;
		}

		if(a != 0x78_01){
			assert(0);
		}
		if(b != 0){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
