// $HeadURL$
// $Date$
// $Author$

module dsterss.run.a.asm_pmaddwd_01_A;


version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		short[] A = [1, 2, 3, 4, 5, 6, 16, 1];
		short* a = A.ptr;

		short[] B = [-9, 10, -11, -12, 13, 14, 0xFFF, 2];
		short* b = B.ptr;

		int* c = (new int[4]).ptr;

			asm{
				mov EAX, a;
				movdqu XMM0, [EAX];
				mov EAX, b;
				movdqu XMM1, [EAX];
				pmaddwd XMM0, XMM1;
				mov EAX, c;
				movdqu [EAX], XMM0;
			}

		if(c[0] != (1 * -9) + (2 * 10)){
			assert(0);
		}
		if(c[1] != (3 * -11) + (4 * -12)){
			assert(0);
		}
		if(c[2] != (5 * 13) + (6 * 14)){
			assert(0);
		}
		if(c[3] != 0xFFF2){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
