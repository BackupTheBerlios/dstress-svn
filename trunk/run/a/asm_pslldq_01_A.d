// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pslldq_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		const ubyte[16] A = [1, 0, 2, 3, 4, 5, 6, 7, 8 ,9, 0xA, 0xB, 0xC, 0xD, 0xE, 0xF];
		ubyte[16] b;
		
		asm{
			movdqu XMM0, A;
			pslldq XMM0, 1;
			movdqu b, XMM0;
		}

		foreach(size_t i, ubyte x; b[0 .. b.length - 1]){
			if(x != i){
				assert(0);
			}
		}

		if(b[$-1] != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
