// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pmulhuw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		ushort* a = [cast(ushort)1, 2, 0x7FFF, 7, 0x7FF0, 0x7EDC, 3, 0x6BCD];
		ushort* b = [cast(ushort)1, 0, 7, 0x7FFF, 0x00FF, 0x7EDC, 5, 13];

		ushort* c = new ushort[8];

		asm{
			mov EAX, a;
			movdqu XMM0, [EAX];
			mov EAX, b;
			movdqu XMM1, [EAX];
			pmulhuw XMM0, XMM1;
			mov EAX, c;
			movdqu [EAX], XMM0;
		}

		if(c[0] != 0){
			assert(0);
		}
		if(c[1] != 0){
			assert(0);
		}
		if(c[2] != 3){
			assert(0);
		}
		if(c[3] != 3){
			assert(0);
		}
		if(c[4] != 0x7F){
			assert(0);
		}
		if(c[5] != 0x3EDD){
			assert(0);
		}
		if(c[6] != 0){
			assert(0);
		}
		if(c[7] != 5){
			assert(0);
		}


		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
