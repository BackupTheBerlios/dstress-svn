// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_div_02_A;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		ubyte a, b;
		ushort x = byte.max+3;
		ubyte y = 2;

		asm{
			mov AX, x;
			mov BL, y;
			div BL;
			mov a, AL;
			mov b, AH;
		}

		if(a != 65){
			assert(0);
		}
		if(b != 0){
			assert(0);
		}

		x = byte.max+2;
		y = 2;

		asm{
			mov AX, x;
			mov BL, y;
			div BL;
			mov a, AL;
			mov b, AH;
		}

		if(a != 64){
			assert(0);
		}
		if(b != 1){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
