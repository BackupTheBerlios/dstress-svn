// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_paddb_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		byte[] a = new byte[16];
		a[0] = 1;
		a[1] = 2;
		a[2] = 3;
		a[3] = 4;
		a[4] = 5;
		a[5] = 6;
		a[6] = 7;
		a[7] = 8;
		a[8] = 9;
		a[9] = 10;
		a[10] = 11;
		a[11] = 12;
		a[12] = 13;
		a[14] = 15;
		a[15] = 16;

		byte[] b = new byte[16];
		b[0] = -8;
		b[1] = -7;
		b[2] = -6;
		b[3] = -5;
		b[4] = -4;
		b[5] = -3;
		b[6] = -2;
		b[7] = -1;
		b[8] = 0;
		b[9] = 1;
		b[10] = 2;
		b[11] = 3;
		b[12] = 4;
		b[13] = 5;
		b[14] = 6;
		b[15] = 7;

		byte[] c = new byte[16];

		asm{
			movdqu XMM0, a;
			movdqu XMM1, b;
			paddb XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != -7){
			assert(0);
		}
		if(c[1] != -5){
			assert(0);
		}
		if(c[2] != -3){
			assert(0);
		}
		if(c[3] != -1){
			assert(0);
		}
		if(c[4] != 1){
			assert(0);
		}
		if(c[5] != 3){
			assert(0);
		}
		if(c[6] != 5){
			assert(0);
		}
		if(c[7] != 7){
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
