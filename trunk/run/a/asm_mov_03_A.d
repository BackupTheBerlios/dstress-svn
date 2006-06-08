 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_mov_03_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0x12_34_56_78;
		uint b;

		asm{
			mov EAX, a;
			mov b, EAX;
		}

		if(a != 0x12_34_56_78){
			assert(0);
		}

		if(b != 0x12_34_56_78){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
