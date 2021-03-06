// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_por_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		ushort[] a = new ushort[8];
		a[0] = 0x1200;
		a[1] = 0x0120;
		a[2] = 0x0012;
		a[3] = 0x2001;
		a[4] = 0x0008;
		a[5] = 0xFFFF;
		a[6] = 0x0000;
		a[7] = 0x1111;

		ushort[] b = new ushort[8];
		b[0] = 0x2100;
		b[1] = 0x2100;
		b[2] = 0x2100;
		b[3] = 0x2100;
		b[4] = 0x2100;
		b[5] = 0x0F00;
		b[6] = 0x0102;
		b[7] = 0x2222;

		ushort[] c = new ushort[8];
		c[0] = 0x3300;
		c[1] = 0x2120;
		c[2] = 0x2112;
		c[3] = 0x2101;
		c[4] = 0x2108;
		c[5] = 0xFFFF;
		c[6] = 0x0102;
		c[7] = 0x3333;

		asm{
			movdqu XMM0, a;
			movdqu XMM1, b;
			por XMM1, XMM0;
			movdqu a, XMM0;
			movdqu b, XMM1;
		}


		foreach(size_t i, ushort s; a){
			if(s != a[i]){
				assert(0);
			}
		}
		foreach(size_t i, ushort s; c){
			if(s != b[i]){
				assert(0);
			}
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
