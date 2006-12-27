// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pmuludq_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		uint[] A = [1, 0x1234_5678, 0xFEDC_A987, 3];
		uint* a = A.ptr;

		uint[] B = [0xFFFF_FFFF, 0xABCD, 13, 88];
		uint* b = B.ptr;

		ulong* c = (new ulong[2]).ptr;

		asm{
			mov EAX, a; 
			movdqu XMM0, [EAX];
			mov EAX, b;
			movdqu XMM1, [EAX];
			pmuludq XMM0, XMM1;
			mov EAX, c;
			movdqu [EAX], XMM0;
		}

		if(c[0] != 0xFFFF_FFFF){
			assert(0);
		}
		if(c[1] != 0xC_F134_9BDB){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
