// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pxor_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE2!()();

		static ushort[8] A = [0x1200, 0x0120, 0x0012, 0x2001, 0x0008, 0xFFFF, 0x0000, 0x1111];
		static ushort[8] B = [0x2100, 0x2100, 0x2100, 0x2100, 0x2100, 0x0F00, 0x0102, 0x2222];
		static ushort[8] C = [0x3300, 0x2020, 0x2112, 0x0101, 0x2108, 0xF0FF, 0x0102, 0x3333];

		ushort[8] d;
		ushort[8] e;
		
		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			pxor XMM1, XMM0;
			movdqu d, XMM0;
			movdqu e, XMM1;
		}


		foreach(size_t i, ushort s; A){
			if(s != d[i]){
				assert(0);
			}
		}
		foreach(size_t i, ushort s; C){
			if(s != e[i]){
				assert(0);
			}
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
