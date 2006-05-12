// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_idiv_02_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int y = -2;
		
		int a = 0x00_00_00_00;
		int b = - 0x0F_FF_FF_FF;
		
		asm{
			mov EDX, a;
			mov EAX, b;
			mov ECX, y;
			idiv ECX;
			mov a, EAX;
			mov b, EDX;
		}

		if(a != 0x88_00_00_00u){
			assert(0);
		}
		if(b != 1){
			assert(0);
		}
		
		a = 0x00_00_00_00;
		b = 0x0F_FF_FF_FE;

		asm{
			mov EDX, a;
			mov EAX, b;
			mov ECX, y;
			idiv ECX;
			mov a, EAX;
			mov b, EDX;
		}

		if(a != 0xF8_00_00_01u){
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
