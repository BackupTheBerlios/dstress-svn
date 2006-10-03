// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_paddsw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		short* a = [cast(short)1, short.min, 3, 4, 5, 6, 7, 8];
		short* b = [cast(short)short.max, -8, -7, -6, -5, -4, -3, -2];
		short* c = new short[8];

		asm{
			mov EAX, a;
			movdqu XMM0, [EAX];
			mov EAX, b;
			movdqu XMM1, [EAX];
			paddsw XMM0, XMM1;
			mov EAX, c;
			movdqu [EAX], XMM0;
		}

		if(c[0] != short.max){
			assert(0);
		}
		if(c[1] != short.min){
			assert(0);
		}
		if(c[2] != -4){
			assert(0);
		}
		if(c[3] != -2){
			assert(0);
		}
		if(c[4] != 0){
			assert(0);
		}
		if(c[5] != 2){
			assert(0);
		}
		if(c[6] != 4){
			assert(0);
		}
		if(c[7] != 6){
			assert(0);
		}
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
