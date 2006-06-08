 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_and_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint a = 0x12_34_56_06;
		ushort b = 5;
		asm{
			mov EBX, a;
			and BX, b;
			mov a, EBX;
		}

		if(a != 0x12_34_00_04){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
