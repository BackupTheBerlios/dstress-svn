// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_paddusb_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		static ubyte[16] A = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
		static ubyte[16] B = [ubyte.max, 7, 6, 5, 4, 3, 2, 1, 0, 1, 2, 3, 4, 5, 6, 7];
		ubyte[16] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			paddusb XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != ubyte.max){
			assert(0);
		}
		if(c[1] != 9){
			assert(0);
		}
		if(c[2] != 9){
			assert(0);
		}
		if(c[3] != 9){
			assert(0);
		}
		if(c[4] != 9){
			assert(0);
		}
		if(c[5] != 9){
			assert(0);
		}
		if(c[6] != 9){
			assert(0);
		}
		if(c[7] != 9){
			assert(0);
		}
		if(c[8] != 9){
			assert(0);
		}
		if(c[9] != 11){
			assert(0);
		}
		if(c[10] != 13){
			assert(0);
		}
		if(c[11] != 15){
			assert(0);
		}
		if(c[12] != 17){
			assert(0);
		}
		if(c[13] != 19){
			assert(0);
		}
		if(c[14] != 21){
			assert(0);
		}
		if(c[15] != 23){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
