// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lddqu_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE3!()();

		ubyte* a = new ubyte[16];
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
		a[13] = 14;
		a[14] = 15;
		a[15] = 16;

		ubyte* b = new ubyte[16];

		asm{
			mov EAX, a;
			lddqu XMM0, [EAX];
			mov EAX, b;
			movdqu [EAX], XMM0;
		}

		for(size_t i = 0; i < 16; i++){
			if(a[i] != b[i]){
				assert(0);
			}
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
