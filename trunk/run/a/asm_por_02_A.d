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

		static ushort[8] A = [0x1200, 0x0120, 0x0012, 0x2001, 0x0008, 0xFFFF, 0x0000, 0x1111];
		static ushort[8] B = [0x2100, 0x2100, 0x2100, 0x2100, 0x2100, 0x0F00, 0x0102, 0x2222];
		static ushort[8] C = [0x3300, 0x2120, 0x2112, 0x2101, 0x2108, 0xFFFF, 0x0102, 0x3333];

		ushort[8] a;
		ushort[8] b;
		
		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			por XMM1, XMM0;
			movdqu a, XMM0;
			movdqu b, XMM1;
		}


		foreach(size_t i, ushort s; A){
			if(s != a[i]){
				assert(0);
			}
		}
		foreach(size_t i, ushort s; C){
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
