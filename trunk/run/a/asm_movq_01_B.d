// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movq_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		ulong[] a = new ulong[2];
		a[0] = 0x1234_ABCD_5678_EF90_LU;
		a[1] = 0x1122_5566_77AA_FFFF_LU;
		ulong[] b = new ulong[2];

		ulong c = 0x1234_ABCD_5678_EF01_LU;

		asm{
			movdqu XMM0, a;
			movq XMM0, c;
			movdqu b, XMM0;
		}

		if(b[0] != c){
			assert(0);
		}

		if(b[1] != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
