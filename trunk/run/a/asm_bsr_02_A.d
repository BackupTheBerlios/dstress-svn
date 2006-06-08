// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bsr_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint a = 0x30000;

		asm{
			mov EBX, a;
			bsr EAX, EBX;
			mov a, EAX;
		}

		if(a != 17){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
