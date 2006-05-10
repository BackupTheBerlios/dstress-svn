// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fnstsw_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		short a;
		int b;

		asm{
			mov EAX, 0x1234_ABCD;
			fnstsw a;
			fnstsw AX;
			mov b, EAX;
		}

		if((b & 0xFFFF_0000) != 0x1234_0000){
			assert(0);
		}

		if(a != (b & 0xFFFF)){
			assert(0);
		}

		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
