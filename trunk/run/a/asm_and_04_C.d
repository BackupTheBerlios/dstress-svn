 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_and_04_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0x12_34_56_06;
		uint b = 0x02_12_41_05;
		
		asm{
			mov EAX, a;
			mov EBX, b;
			and EAX, EBX;
			mov a, EAX;
		}

		if(a != 0x02_10_40_04){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
