// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pextrw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		ushort* x = [cast(ushort)1, 2, 3, 4, 5, 0xFFFF, 7, 0];
		uint a;
		uint b;

		asm{
			mov EAX, x;
			movdqu XMM0, [EAX];
			pextrw EAX, XMM0, 5;
			mov a, EAX;
			pextrw EDX, XMM0, 1;
			mov b, EDX;
		}

		if(a != 0xFFFF){
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
