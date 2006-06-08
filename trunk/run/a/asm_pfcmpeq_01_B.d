// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfcmpeq_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();

		const float[2] A = [123.0f, -456.0f];
		const float[2] B = [123.0f, 456.0f];
		uint[2] c;

		asm{
			movq MM0, A;
			movq MM1, B
			pfcmpeq MM0, MM1;
			movq c, MM0;
			emms;
		}

		if(c[0] != uint.max){
			assert(0);
		}
		if(c[1] != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
