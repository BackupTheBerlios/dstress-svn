// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movq_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE2!()();

		static ulong[2] a = [0x1234_ABCD_5678_EF90_LU, 0x1122_2222_5555_FFFF_LU];
		static ulong[2] b = [0x1000_1111_5678_EF90_LU, 0x1122_5566_77AA_FFFF_LU];
		
		ulong[2] c;
		
		asm{
			movdqu XMM0, a;
			movdqu XMM1, b;
			movq XMM0, XMM1;
			movdqu c, XMM0;
		}
		
		if(c[1] == a[1]){
			// Intel
		}else if(c[1] == 0){
			// AMD
		}else{
			assert(0);
		}

		if(c[0] != b[0]){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
