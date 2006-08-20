// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtsd2si_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		uint i = 0;
		double f = 64.0f;

		asm{
			cvtsd2si EAX, f;
			mov i, EAX;
		}

		if(i != 64){
			assert(0);
		}
		if(f != 64.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
