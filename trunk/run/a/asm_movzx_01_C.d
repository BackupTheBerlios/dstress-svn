// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movzx_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint i = 0xFF_FF_FF_FFu;
		ushort b = 0xFF_FF;

		asm{
			mov EAX, i;
			mov AX, b;
			movzx EAX, AX;
			mov i, EAX;
		}

		if(i != 0x00_00_FF_FFu){
			assert(0);
		}
		if(b != 0xFF_FF){
			assert(0);
		}

		i = 0xFF_FF_FF_FFu;
		b = 0x12_34;

		asm{
			mov EAX, i;
			mov AX, b;
			movzx EAX, AX;
			mov i, EAX;
		}

		if(i != 0x00_00_12_34u){
			assert(0);
		}
		if(b != 0x12_34){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
