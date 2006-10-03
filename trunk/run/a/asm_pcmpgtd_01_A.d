// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pcmpgtd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		int* a = [cast(int)0, 3, 0, 4];
		int* b = [cast(int)0, 1, 1, 4];
		uint* c = new uint[4];

		asm{
			mov EAX, a;
			movdqu XMM0, [EAX];
			mov EAX, b;
			movdqu XMM1, [EAX];
			pcmpgtd XMM0, XMM1;
			mov EAX, c;
			movdqu [EAX], XMM0;
		}

		if(c[0] != 0){
			assert(0);
		}
		if(c[1] != 0xFFFF_FFFF){
			assert(0);
		}
		if(c[2] != 0){
			assert(0);
		}
		if(c[3] != 0){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
