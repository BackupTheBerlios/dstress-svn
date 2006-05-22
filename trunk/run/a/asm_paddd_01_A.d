// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_paddd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE2!()();

		static int[4] A = [1, 2, 3, 4];
		static int[4] B = [int.max-2, int.min, 0, -6];
		int[4] c;
				
		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			paddd XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != int.max - 1){
			assert(0);
		}
		if(c[1] != int.min + 2){
			assert(0);
		}
		if(c[2] != 3){
			assert(0);
		}
		if(c[3] != -2){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
