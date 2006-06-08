// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xadd_02_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a = 0x01020003;
		int b = 0x01030001;

		asm{
			mov EAX, a;
			mov EBX, b;
			xadd EBX, EAX;
			mov a, EAX;
			mov b, EBX;
		}

		if(a != 0x01030001){
			assert(0);
		}
		if(b != 0x02050004){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
