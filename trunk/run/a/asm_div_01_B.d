// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_div_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		ushort y = 2;

		ushort a = 0x00_00u;
		ushort b = 0xFF_FFu;

		asm{
			mov DX, a;
			mov AX, b;
			div y;
			mov a, AX;
			mov b, DX;
		}

		if(a != 0x7F_FFu){
			assert(0);
		}
		if(b != 0x1u){
			assert(0);
		}

		a = 0x00_00u;
		b = 0xFF_FEu;

		asm{
			mov DX, a;
			mov AX, b;
			div y;
			mov a, AX;
			mov b, DX;
		}

		if(a != 0x7F_FFu){
			assert(0);
		}
		if(b != 0x0u){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
