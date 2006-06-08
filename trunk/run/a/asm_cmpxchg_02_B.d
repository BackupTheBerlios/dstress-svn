// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpxchg_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		ushort a = 0;
		ushort c = 3;
		asm{
			mov AX, 1;
			mov BX, 2;
			mov CX, c;
			cmpxchg CX, BX;
			mov a, AX;
			mov c, CX;
		}

		if(c != 3){
			assert(0);
		}
		if(a != 3){
			assert(0);
		}

		a = 0;
		c = 3;

		asm{
			mov AX, 3;
			mov BX, 2;
			mov CX, c;
			cmpxchg CX, BX;
			mov a, AX;
			mov c, CX;
		}

		if(c != 2){
			assert(0);
		}
		if(a != 3){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
