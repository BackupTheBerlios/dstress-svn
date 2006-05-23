// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pshuflw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const short[4] A = [9, 9, 9, 9];
		const short[4] B = [1, 2, 3, 4];

		short[4] c;

		asm{
			movq MM0, A;
			movq MM1, B;
			pushfw MM0, MM1, 0b11_10_01_00;
			movq c, MM0;
		}

		if(c[0] != 4){
			assert(0);
		}
		if(c[1] != 3){
			assert(0);
		}
		if(c[2] != 2){
			assert(0);
		}
		if(c[3] != 1){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
