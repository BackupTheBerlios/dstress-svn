// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtss2si_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		float f = -19.0f;
		int i = 0;

		asm{
			cvtss2si EAX, f;
			mov i, EAX;
		}

		if(i != -19){
			assert(0);
		}
		if(f != -19.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
