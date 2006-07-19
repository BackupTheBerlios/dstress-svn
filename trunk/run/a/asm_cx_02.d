// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cx_02;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		byte a = 0;
		byte b = 0;
		short s = 0x12_34;


		asm{
			mov CX, s;
			mov a, CH;
			mov b, CL;
		}

		if(s != 0x12_34){
			assert(0);
		}
		if(a != 0x12){
			assert(0);
		}
		if(b != 0x34){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
