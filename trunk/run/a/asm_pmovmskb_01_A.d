// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pmovmskb_01_A;


version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const ubyte Y = 0b1000_0000;
		const ubyte N = 0b0111_1111;

		const ubyte[16] A = [Y, N, Y, Y, N, N, Y, Y, Y, N, N, N, Y, N, N, Y];

		int b;

		asm{
			mov EAX, 0x1234_5678;
			movdqu XMM0, A;
			pmovmskb EAX, XMM0;
			mov b, EAX;
		}

		if(b != 0b1011_0011_1000_1001){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: No inline ASM support");
	static assert(0);
}
