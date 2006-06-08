// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mul_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a, b;
		uint x = int.max+2;

		asm{
			mov EAX, 0x12_34_56_78u;
			mov EDX, 0x12_34_56_78u;
			mov EAX, 2;
			mul x;
			mov a, EDX;
			mov b, EAX;
		}

		if(a != 1){
			assert(0);
		}
		if(b != 2){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
