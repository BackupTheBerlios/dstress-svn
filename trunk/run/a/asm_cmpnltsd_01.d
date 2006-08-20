// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpnltsd_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		double a = 1.2;
		double b = 1.2;
		ulong res;

		asm{
			movq XMM0, a;
			cmpsd XMM0, b, 5;
			movq res, XMM0;
		}

		if(res != res.max){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
