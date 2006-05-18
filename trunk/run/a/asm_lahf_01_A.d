// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lahf_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}

version(runTest){
	int main(){
		uint i = 0x12_34_56_01;

		asm{
			mov EAX, i;
			cmp AL, 2;
			lahf;
			mov i, EAX;
		}

		if((i & 0xFF_FF_00_FF) != 0x12_34_00_01){
			assert(0);
		}

		ubyte b = (i & 0x00_00_FF_00) >> 8;

		if(b != 151){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
