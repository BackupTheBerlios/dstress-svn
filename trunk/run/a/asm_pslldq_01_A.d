// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pslldq_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}
import std.stdio;
version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const ulong[2] A = [(1 << 63) | 1, (1 << 63) | 3];
		ulong[2] c;

		asm{
			movdqu XMM0, A;
			pslldq XMM0, 1;
			movdqu c, XMM0;
		}

		if(c[0] != 0x100){
			assert(0);
		}
		if(c[1] != 0x300){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
