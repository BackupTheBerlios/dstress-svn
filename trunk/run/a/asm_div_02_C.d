// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_div_02_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint y = 2;
		
		uint a = 0x00_00_00_00u;
		uint b = 0xFF_FF_FF_FFu;
		
		asm{
			mov EDX, a;
			mov EAX, b;
			mov EBX, y;
			div EBX;
			mov a, EAX;
			mov b, EDX;
		}

		if(a != 0x7F_FF_FF_FFu){
			assert(0);
		}
		if(b != 0x1u){
			assert(0);
		}
		
		a = 0x00_00_00_00u;
		b = 0xFF_FF_FF_FEu;

		asm{
			mov EDX, a;
			mov EAX, b;
			mov EBX, y;
			div EBX;
			mov a, EAX;
			mov b, EDX;
		}

		if(a != 0x7F_FF_FF_FFu){
			assert(0);
		}
		if(b != 0x0u){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
