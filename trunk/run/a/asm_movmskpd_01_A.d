// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movmskpd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const double[2] a = [1.0, -1.0];
		uint b;
		
		asm{
			movupd XMM0, a;
			mov EAX, 0x1234_5678;
			movmskpd EAX, XMM0;
			mov b, EAX;
		}
		
		if(b != 0x0000_0002){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
