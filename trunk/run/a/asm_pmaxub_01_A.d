// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pmaxub_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	import addon.dyn_array;

	int main(){
		haveSSE!()();

		ubyte[] a = dyn_array!(ubyte)(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16);
		ubyte[] b = dyn_array!(ubyte)(15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 17);
		ubyte[] c = new ubyte[16];

		asm{
			movdqu XMM0, a;
			movdqu XMM1, b;
			pmaxub XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != 15){
			assert(0);
		}
		if(c[1] != 14){
			assert(0);
		}
		if(c[2] != 13){
			assert(0);
		}
		if(c[3] != 12){
			assert(0);
		}
		if(c[4] != 11){
			assert(0);
		}
		if(c[5] != 10){
			assert(0);
		}
		if(c[6] != 9){
			assert(0);
		}
		if(c[7] != 8){
			assert(0);
		}
		if(c[8] != 9){
			assert(0);
		}
		if(c[9] != 10){
			assert(0);
		}
		if(c[10] != 11){
			assert(0);
		}
		if(c[11] != 12){
			assert(0);
		}
		if(c[12] != 13){
			assert(0);
		}
		if(c[13] != 14){
			assert(0);
		}
		if(c[14] != 15){
			assert(0);
		}
		if(c[15] != 17){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
