// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xadd_01_C;

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
			xadd b, EAX;
			mov a, EAX;
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
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
